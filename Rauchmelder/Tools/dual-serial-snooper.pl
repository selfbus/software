#!/usr/bin/perl
#
#  This program connects to two serial ports and outputs what the ports receive.
#
use strict;

use Device::SerialPort;
use Time::HiRes qw(time sleep gettimeofday);

use constant NUL => chr(0);
use constant STX => chr(2);
use constant ETX => chr(3);
use constant ACK => chr(6);
use constant NAK => chr(15);


# The serial ports to use
my $portName1 = $ARGV[0] || '/dev/ttyUSB0';
my $portLabel1 = 'RM ';
my $portName2 = $ARGV[1] || '/dev/ttyUSB1';
my $portLabel2 = 'LPC';

my ($portObj1, $portObj2);
my $startTime = time();
my $debug = 0;


#
#  The main
#
sub main #()
{
    if ($ARGV[0] =~ /^-/)
    {
    	print STDERR "Usage: $0 [rmPort lpcPort]\n\n";
    	exit 1;
    }

	$| = 1;

    $portObj1 = openPort($portName1, $portLabel1);
    $portObj2 = openPort($portName2, $portLabel2);

    while (1)
    {
    	receive($portObj1, $portObj2);
        receive($portObj2, $portObj1);
    }
}


#
#  Do the receiving for a port object
#
sub receive #(portObj, otherPortObj)
{
	my $portObj = shift;
	my $otherPortObj = shift;

    my ($rlen, $ch) = $portObj->{port}->read(1);
    if ($rlen <= 0)
    {
        my $limit = elapsedMS() - 100;
        if ($portObj->{lastRecvTime} < $limit && $portObj->{recvBuf} ne '')
        {
        	logMsg($portObj->{label} . ': ' . $portObj->{recvBuf});
        	$portObj->{recvBuf} = '';
        }
    	
    	return;
    }

    if ($otherPortObj->{recvBuf} ne '')
    {
    	logMsg($otherPortObj->{label} . ': ' . $otherPortObj->{recvBuf});
    	$otherPortObj->{recvBuf} = '';
    }

#    while ($rlen > 0)
#    {
	    $ch = convertChar($ch);
	    $portObj->{recvBuf} .= ' ' if ($portObj->{recvBuf} =~ /[A-Z0-9][A-Z0-9]$/ && length($ch)==1);
    	$portObj->{recvBuf} .= $ch;
        ($rlen, $ch) = $portObj->{port}->read(1);
#    }

    $portObj->{lastRecvTime} = elapsedMS();
}


#
#  Convert a received character
#
sub convertChar #(ch)
{
	my $ch = shift;

    my $ord = ord($ch);
    if ($ord == 0) { $ch = '<NUL>'; }
    elsif ($ord == 2) { $ch = '<STX>'; }
    elsif ($ord == 3) { $ch = '<ETX>'; }
    elsif ($ord == 6) { $ch = '<ACK>'; }
    elsif ($ord == 15) { $ch = '<NAK>'; }
    elsif (($ch lt '0' || $ch gt '9') && ($ch lt 'A' || $ch gt 'F'))
    {
    	$ch = sprintf('<x%02x>', $ord);
    }

    return $ch;
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
#  Return the time in milliseconds since program start
#
sub elapsedMS #()
{
	my @tm = gettimeofday();
    my $ms = int($tm[1] / 1000);
    my $elapsedSec = time() - $startTime;
	return $elapsedSec * 1000 + $ms; 
}


#
#  Open a serial port
#
sub openPort #(portName, portLabel)
{
	my $portName = shift;
	my $portLabel = shift;

    my $port = new Device::SerialPort($portName, 0) || die "Cannot open $portName: $!";
    $port->baudrate(9600);
    $port->parity('none');
    $port->databits(8);
    $port->stopbits(1);
    $port->handshake('none');
    logMsg("$portLabel listening on $portName");

    my $portObj =
    {
    	'port' => $port,
    	'name' => $portName,
    	'label' => $portLabel,
    	'recvBuf' => '',
    	'lastRecvTime' => 0
    };

    return $portObj;
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

    printf("%02d:%02d:%02d.%03d %s\n", $tm[2], $tm[1], $tm[0], $ms, $msg);
}


#
#  Cleanup
#
END
{
    if ($portObj1)
    {
       $portObj1->{port}->close();
    }

    if ($portObj2)
    {
       $portObj2->{port}->close();
    }
}


&main;
