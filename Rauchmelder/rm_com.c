/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */

#include "rm_com.h"
#include "rm_const.h"

#include <fb_lpc922.h>


// Maximale Anzahl Zeichen einer Nachricht vom Rauchmelder, exklusive STX und ETX
// Dekodiert brauchen je zwei Zeichen ein Byte Platz in recvBuf.
#define RECV_MAX_CHARS 12

// Buffer für eine dekodierte Nachricht vom Rauchmelder
__idata unsigned char recvBuf[RECV_MAX_CHARS >> 1];

// Zähler für die empfangenen Zeichen vom Rauchmelder
char recvCount;


// Hilfsstring für die Umschlüsselung Zahl auf Hex-String
__code unsigned const char *hexDigits = "0123456789ABCDEF";


/**
 * Serielle Kommunikation mit dem Rauchmelder initialisieren
 */
void rm_init()
{
	unsigned int brg = 0x02F0; // 9600 Baud

	BRGCON&=0xFE;	// Baudrate generator stop

	P1M1&=0xFC;		// Set RX and TX bidirectional
	P1M2&=0xFC;
	SCON=0x51;		// Mode 1, receive enable
	SSTAT|=0xE0;	// TI at end of stopbit, Interrupt only at RX and double TX buffer on
	BRGCON|=0x02;	// Use Baudrate generator but yet stopped
	BRGR1=brg>>8;	// Baudrate = cclk / ((BRGR1,BRGR0) + 16)
	BRGR0=brg;

	BRGCON|=0x01;	// Baudrate generator start
	TI=1;
}


/**
 * Ein Byte an den Rauchmelder senden.
 */
void rm_send_byte(unsigned char ch)
{
	while (!TI)
		;

 	TI = 0;
	SBUF = ch;
}


/**
 * Eine Nachricht an den Rauchmelder senden.
 */
void rm_send_hexstr(unsigned char* hexstr)
{
	unsigned char checksum = 0;
	unsigned char ch;

	rm_send_byte(STX);

	while (*hexstr)
	{
		ch = *hexstr;
		checksum += ch;
		rm_send_byte(ch);
		++hexstr;
	}

	rm_send_byte(hexDigits[checksum >> 4]);
	rm_send_byte(hexDigits[checksum & 15]);

	rm_send_byte(ETX);
}


/**
 * Einen 1 Byte Befehl an den Rauchmelder senden.
 */
void rm_send_cmd(unsigned char cmd)
{
	unsigned char b, bytes[3];

	b = cmd >> 4;
	bytes[0] = hexDigits[b];

	b = cmd & 0x0f;
	bytes[1] = hexDigits[b];

	bytes[2] = 0;
	rm_send_hexstr(bytes);
}


/**
 * Ein Byte über die Serielle vom Rauchmelder empfangen.
 */
void rm_recv_byte()
{
	char idx;

	unsigned char ch = SBUF;
	RI = 0;

	// Am Anfang auf das Start Byte warten
	if (recvCount < 0)
	{
		if (ch == STX)
			++recvCount;
		return;
	}

	idx = recvCount >> 1;

	// Am Ende den Empfang bestätigen und die erhaltene Antwort verarbeiten
	if (ch == ETX)
	{
		rm_send_byte(ACK);

		if (idx > 1)
			rm_process_msg(recvBuf, idx - 1); // Verarbeitung aufrufen (ohne Prüfsumme)

		recvCount = -1;

		return;
	}

	// Bei Überlauf die restlichen Zeichen ignorieren
	if (recvCount >= RECV_MAX_CHARS)
		return;

	// Die empfangenen Zeichen sind ein Hex String.
	// D.h. jeweils zwei Zeichen ergeben ein Byte.
	// In Answer gleich die dekodierten Bytes schreiben.
	//
	// Dieser Algorythmus ist fehlerhaft falls die Anzahl der empfangenen
	// Zeichen ungerade ist.

	if (ch >= '0' && ch <= '9')
		ch -= '0';
	else if (ch >= 'A' && ch <= 'F')
		ch -= 'A' - 10;
	else return; // Ungültige Zeichen ignorieren

	if (recvCount & 1)
	{
		recvBuf[idx] <<= 4;
		recvBuf[idx] |= ch;
	}
	else recvBuf[idx] = ch;

	++recvCount;
}
