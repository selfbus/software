/*
 *    _____ ________    __________  __  _______    ____  __  ___
 *   / ___// ____/ /   / ____/ __ )/ / / / ___/   / __ \/  |/  /
 *   \__ \/ __/ / /   / /_  / __  / / / /\__ \   / /_/ / /|_/ /
 *  ___/ / /___/ /___/ __/ / /_/ / /_/ /___/ /  / _, _/ /  / /
 * /____/_____/_____/_/   /_____/\____//____/  /_/ |_/_/  /_/
 *
 *  Copyright (c) 2015-2016 Stefan Haller
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */

#ifndef rm_app_h
#define rm_app_h

// OPTIONS
// Enable to activate device ID checking
#define DEVICE_ID_CHECK


// Current Firmware Version
#define FW_VER_MAJ  0x02    // Major
#define FW_VER_MIN  0x40    // Minor


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
