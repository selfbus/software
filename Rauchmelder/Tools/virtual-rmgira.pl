#!/usr/bin/perl
#
#  This program simulates a smoke alarm.
#
#  WARNING  most functionality is not yet implemented
#
use strict;

use Term::ReadKey;    # Found in the package libterm-readkey-perl in Ubuntu / Debian
use Device::SerialPort;
use Time::HiRes qw(time sleep gettimeofday);

use constant NUL => chr(0);
use constant STX => chr(2);
use constant ETX => chr(3);
use constant ACK => chr(6);
use constant NAK => chr(15);


# The serial port to use
my $portName = $ARGV[0] || '/dev/ttyUSB0';

my ($port, $readBuf, $readActive);
my $startTime = time();
my $debug = 0;

my $batVolt = 8.47;
my $pollution = 7;
my $temp1 = 25;
my $temp2 = 25;
my $smokeboxValueHex = '00 5C';
my $serialHex = "39 78 23 45";

my $numTempAlarms = 0;
my $numSmokeAlarms = 0;
my $numTestAlarms = 0;
my $numWiredAlarms = 0;
my $numWirelessAlarms = 0;
my $numWiredTestAlarms = 0;
my $numWirelessTestAlarms = 0;

my $statusTempAlarm = 0;
my $statusSmokeAlarm = 0;
my $statusTestAlarm = 0;
my $statusWiredAlarm = 0;
my $statusWirelessAlarm = 0;
my $statusWiredTestAlarm = 0;
my $statusWirelessTestAlarm = 0;


#
#  The main
#
sub main #()
{
	$| = 1;

    printKeys();
    openPort();

    while (1)
    {
        Term::ReadKey::ReadMode('cbreak');
        my $key = ReadKey(-1);
        Term::ReadKey::ReadMode('normal');
        if (defined $key)
        {
        	print "\r";
            keyPress($key);
        }

        my ($rlen, $ch) = $port->read(1);
        if ($rlen > 0) { processChar($ch); }
    }
}


#
#  Print manual control keys
#
sub printKeys #()
{
    print "Keys: 1=smoke, 2=temp, 3=wired, 4=wireless, 5=test, 6=wired-test, 7=wireless-test\n";	
}


#
#  Handle a key press
#
sub keyPress #(key)
{
	my $key = shift;

    if ($key eq 'h') # print help
    {
    	printKeys();
    }
    elsif ($key eq '1') # toggle smoke alarm
    {
    	$statusSmokeAlarm = !$statusSmokeAlarm;
    }
    elsif ($key eq '2') # toggle temp alarm
    {
        $statusTempAlarm = !$statusTempAlarm;
    }
    elsif ($key eq '3') # toggle wired alarm
    {
        $statusWiredAlarm = !$statusWiredAlarm;
    }
    elsif ($key eq '4') # toggle wireless alarm
    {
        $statusWirelessAlarm = !$statusWirelessAlarm;
    }
    elsif ($key eq '5') # toggle test alarm
    {
        $statusTestAlarm = !$statusTestAlarm;
    }
    elsif ($key eq '6') # toggle wired test alarm
    {
        $statusWiredTestAlarm = !$statusWiredTestAlarm;
    }
    elsif ($key eq '7') # toggle wireless test alarm
    {
        $statusWirelessTestAlarm = !$statusWirelessTestAlarm;
    }

    hideStatus();
    showStatus();
}


#
#  Process a character from the serial port
#
sub processChar #(ch)
{
	my $ch = shift;

    logMsg(sprintf("RECV byte 0x%02x", ord($ch)))
        if ($debug);

    if ($ch eq STX)
    {
    	logMsg("RECV: <STX>") if ($readActive);

    	$readBuf = '';
    	$readActive = 1;
    }
    elsif ($ch eq ETX)
    {
    	$readActive = 0;
    	processMessage($readBuf);
    }
    elsif ($ch eq ACK)
    {
        logMsg("RECV: <ACK>");
    }
    elsif ($ch eq NAK)
    {
        logMsg("RECV: <NAK>");
    }
    elsif ($readActive)
    {
    	$readBuf .= $ch;
    }
    else
    {
    	logMsg(sprintf("RECV: 0x%02x (out of bounds - ignored)", ord($ch)));
    }
}


#
#  Process a received message
#
sub processMessage #(msg)
{
	my $msg = shift;
	logMsg("RECV: <STX>$msg<ETX>");
	
    return if (!validateChecksum($msg));
	my @bytes = decodeHexString(substr($msg, 0, -2));

    my $cmd = $bytes[0];
    if ($cmd == 0x04) # query serial number (hexstr 0464)
    {
        logMsg("Received serial number query");
        sendACK();
        sendHexString('C4' . $serialHex);
    }
    elsif ($cmd == 0x09) # query operating time (hexstr 0969)
    {
        logMsg("Received operating time query");
        sendACK();
        sendHexString('C9' . sprintf('%08X', (time() - $startTime) * 4));
    }
    elsif ($cmd == 0x0B) # query smokebox values (hexstr 0B72)
    {
        logMsg("Received smokebox values query");
        sendACK();
        sendHexString('CB' . $smokeboxValueHex . sprintf('%02X', $numSmokeAlarms) . sprintf('%02X', $pollution));
    }
    elsif ($cmd == 0x0C) # query battery voltage and temperatures (hexstr 0C73)
    {
        logMsg("Received battery voltage and temperatures query");
        sendACK();
        my $batEncoded = int($batVolt / 0.018369);
        sendHexString('CC' . sprintf('%04X', $batEncoded) . sprintf('%02X', $temp1 + 20) . sprintf('%02X', $temp2 + 20));
    }
    elsif ($cmd == 0x0D) # query number of alarms (hexstr 0D74)
    {
        logMsg("Received number of alarms query");
        sendACK();
        sendHexString('CD' . sprintf('%02X', $numTempAlarms) . sprintf('%02X', $numTestAlarms) .
                     sprintf('%02X', $numWiredAlarms) . sprintf('%02X', $numWirelessAlarms));
    }
    elsif ($cmd == 0x0E) # query number of remote test alarms (hexstr 0E75)
    {
        logMsg("Received number of remote test alarms query");
        sendACK();
        sendHexString('CE' . sprintf('%02X', $numWiredTestAlarms) . sprintf('%02X', $numWirelessTestAlarms));
    }
    else
    {
    	logMsg(sprintf("Received unknown command %02X", $cmd));
    	sendNAK();
    }
}


#
#  Validate the checksum
#
sub validateChecksum #(hexstr)
{
	my $hexstr = shift;

    my $checksum = 0;
    for (my $i = 0; $i < length($hexstr) - 2; ++$i)
    {
        $checksum += ord(substr($hexstr, $i, 1));
    }
    $checksum = sprintf('%02X', $checksum & 0xff);

    if ($checksum ne substr($hexstr, -2))
    {
    	logMsg("Checksum error: received " . substr($hexstr, -2) . ", expected $checksum");
    	sendNAK();
    	return 0;
    }

    return 1;
}


#
#  Decode hex string
#
sub decodeHexString #(hexstr)
{
	my $hexstr = shift;
	my @bytes;

    for (my $i = 0; $i < length($hexstr); $i += 2)
    {
    	push(@bytes, hex(substr($hexstr, $i, 2)));
    }

    return @bytes;
}


#
#  Send NUL, STX, bytes as hex string with checksum, ETX
#
sub sendBytes #(bytes[])
{
    my $hexstr = '';
    foreach my $byte (@_)
    {
    	$hexstr .= sprintf('%02X', $byte & 0xff);
    }
    
    sendHexString($hexstr);
}


#
#  Send NUL, STX, hex string, checksum, ETX
#
sub sendHexString #(hexstr)
{
    my $hexstr = shift;
    $hexstr =~ s/\s//g;

    my $checksum = 0;
    for (my $i = 0; $i < length($hexstr); ++$i)
    {
    	$checksum += ord(substr($hexstr, $i, 1));
    }
    $hexstr .= sprintf('%02X', $checksum & 0xff);

    logMsg("SEND: <NUL><STX>$hexstr<ETX>");

    $port->write(NUL);
    $port->write(STX);
    $port->write($hexstr);
    $port->write(ETX) || print "write to $portName failed: $!\n";
}


#
#  Send a message as is.
#
sub send #(msg)
{
    my $msg = shift;
    logMsg("SEND: $msg");
    $port->write($msg) || print "write to $portName failed: $!\n";
    $port->write_drain();
}


#
#  Send an ACK
#
sub sendACK #()
{
    logMsg("SEND: <ACK>");
    $port->write(ACK) || print "write to $portName failed: $!\n";
}


#
#  Send a NAK
#
sub sendNAK #()
{
	logMsg("SEND: <NAK>");
    $port->write(NAK) || print "write to $portName failed: $!\n";
}


#
#  Send a NUL
#
sub sendNUL #()
{
    logMsg("SEND: <NUL>");
    $port->write(NUL) || print "write to $portName failed: $!\n";
}


#
#  Open the serial port
#
sub openPort #()
{
    $port = new Device::SerialPort($portName, 0) || die "Cannot open $portName: $!";
    $port->baudrate(9600);
    $port->parity('none');
    $port->databits(8);
    $port->stopbits(1);
    $port->handshake('none');
    logMsg("Listening on $portName");
}


#
#  Print a log message
#
sub logMsg #(msg)
{
	my $msg = shift;
	$msg =~ s/\n$//;

    my @tm = gettimeofday();
    my $ms = int($tm[1] / 1000);
    @tm = localtime();

    hideStatus();
    printf("%02d:%02d:%02d.%03d %s\n", $tm[2], $tm[1], $tm[0], $ms, $msg);
    showStatus();
}


#
#  Show the status line
#
sub showStatus #()
{
	my $alarms = '';

    $alarms .= 'SMOKE ' if ($statusSmokeAlarm);
    $alarms .= 'TEMP ' if ($statusTempAlarm);
    $alarms .= 'WIRED ' if ($statusWiredAlarm);
    $alarms .= 'WIRELESS ' if ($statusWirelessAlarm);
    $alarms .= 'TEST ' if ($statusTestAlarm);
    $alarms .= 'WIRED-TEST ' if ($statusWiredTestAlarm);
    $alarms .= 'WIRELESS-TEST ' if ($statusWirelessTestAlarm);
    $alarms = '(none)' if ($alarms eq '');

	print "Alarms: $alarms\r";
}


#
#  Remove the status line
#
sub hideStatus #()
{
    my $clear = ' ' x 80;
    print "$clear\r";
}


#
#  Cleanup
#
END
{
	if ($port)
	{
	   $port->close();
	}
}


&main;
