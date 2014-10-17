/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */
#ifndef rm_app_h
#define rm_app_h

//#define debugmode
#ifdef LPC936
	#include <fb_lpc936_1.53.h>
#else
#include <fb_lpc922_1.53.h>
#endif

/**
 * Den Zustand der Alarme bearbeiten.
 */
extern void process_alarm_stats();

/**
 * Com-Objekte bearbeiten deren Wert gesendet werden soll.
 */
extern void process_objs();

/**
 * Der Timer ist übergelaufen.
 */
extern void timer_event();

/**
 * Alle Applikations-Parameter zurücksetzen.
 */
extern void restart_app();

/**
 * Zähler für die Zeit die auf eine Antwort vom Rauchmelder gewartet wird.
 * Ist der Zähler 0 dann wird gerade auf keine Antwort gewartet.
 */
extern unsigned char answerWait;


#endif /*rm_app_h*/
