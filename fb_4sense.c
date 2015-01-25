/*
 *    _____ ______ __   __________  __  _______
 *   / ___// ____// /  / ____/ __ )/ / / / ___/
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /
 * /____/_____//____/_/   /_____/\____//____/
 *
 *  Copyright (c) 2014-2015 Stefan Haller
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 *
 *
 * Versionen:   0.01  erste Version
 */

#include "fb_app_4sense.h"
#include "4Sense_Uni.h"
#include "watchdog.h"

#ifdef DEBUG_H_
    // Setup the debug variables
    DEBUG_VARIABLES;
#endif

extern unsigned char __idata __at (0xFE-0x2B) family_code[4];

#ifndef DEBUG_H_
// Wenn Debug aktiv ist werden die Werte in der restart_app() geschrieben damit die Konfiguration nicht
// immer neu geschrieben werden muss.
// Geräteparameter setzen, diese können von der ETS übschrieben werden wenn Schreibschutz nicht aktiv
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x4C};  // Herstellercode 0x004C = Robert Bosch
static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0xB0, 0x03};  // 0x0438 = Selfbus 1080 4sense
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0};         // PORT A Direction Bit Setting
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_state={255};              // Run-Status (00=stop FF=run)
static __code unsigned int  __at (EEPROM_ADDR + 0x17) start_pa={0xFFFF};            // Default PA is 15.15.255
#endif



void main(void)
{
    unsigned char n, tasterpegel=0;
    __bit tastergetoggelt=0;

    int th;
    // Port 0 all open drain
    P0M1 = 0xff;
    P0M2 = 0xff;

    // ***************************************************************************
    // Initialisierung
    // ***************************************************************************
    restart_hw();               // Hardware zurücksetzen
    TASTER=0;                   // LED Ein

    // Warten bis Bus stabil, nach Busspannungswiederkehr
    for (n = 0; n < 50; n++)
    {
        TR0 = 0;                    // Timer 0 anhalten
        TH0 = eeprom[ADDRTAB + 1];  // Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
        TL0 = eeprom[ADDRTAB + 2];
        TF0 = 0;                    // Überlauf-Flag zurücksetzen
        TR0 = 1;                    // Timer 0 starten
        while (!TF0)
            ;
    }
    WATCHDOG_INIT
    WATCHDOG_START
    restart_app();
// Needs to be after restart_app
#ifdef DEBUG_H_
    // Initialize the debugging
    DEBUG_SETUP;
#endif


    // ***************************************************************************
    // Hauptschleife
    // ***************************************************************************
    do  {
        WATCHDOG_FEED

#ifdef DEBUG_H_
        // Here happens the serial communication with the PC
        DEBUG_POINT;
#endif

        // Disconnect timeout after 6 seconds
        if (RTCCON>=0x80 && connected)   // Realtime clock ueberlauf und
        {                                // wenn connected den timeout für Unicast connect behandeln
            RTCCON=0x61;// RTC flag löschen
            if(connected_timeout <= 110) // 11x 520ms --> ca 6 Sekunden
                connected_timeout++;
            else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
        }


        if (APPLICATION_RUN)    // App läuft (nicht im Prog. Mode)
        {
            if(RTCCON>=0x80) delay_timer();     // Realtime clock Ueberlauf

            // Start temperature conversion for all connected DS sensors
            if (sequence==1)
            {
                for(kanal=0;kanal<=3;kanal++)
                {
                    if(eeprom[SENSOR_TYPE+kanal] &0x01)     // DS temperature sensor
                    {
                        interrupted=0;
                        if(family_code[kanal] && start_tempconversion())    // Start convert if sensor known
                        {
                            if(!interrupted)
                               family_code[kanal] |= 0x80;  // Convert done
                        }
                        else    // No Sensor configured
                        {
                            onewire_error |= bitmask_1[kanal<<1];    // not connected
                        }
                    }
                }

                sequence = 2;           // Temperature convert done
            }
            // Warten bis DS Sensoren fertig sind
            else if (sequence==2)
            {
                timercnt[9] = 0x80+7;   // wait approx. 0.9s for sensor to be done
                                        // secuence 3 set by delaytimer
                kanal = 0;
                sequence=3;             // Konvertierung abgeschlossen
            }
            // Read DS Sensor
            else if(sequence==4)        // && !TR1 // can be used to sync
            {
                // Temperatur einlesen + Übergabe Sensortyp
                th=read_temp(family_code[kanal]);   // Read sensor with detected codes
                // interrupted/crc error -60
                // sensor not found -61
                if(th>-5600)
                {
                    messwerte[kanal]=th;

                    // Grenzwerte
                    //grenzwert(kanal);

                    // Messwertdifferenz
                    messwert(kanal);

                    // Buswiederkehr bearbeiten
                    //if (sende_sofort_bus_return)
                      //  bus_return();
                }

                // Prolong waiting for DHT Sensor, if any
                if(eeprom[SENSOR_TYPE+kanal] &0x02)
                    timercnt[9] = 9;        // add approx. 1s

                if (kanal<3)    // Next channel
                    kanal++;
                else            // Reached last channel
                {
                    timercnt[9] |= 0x80;   // start timer
                    kanal = 0;
                    sequence = 5;
                }
            }
            // Read DHT Sensor
            else if(sequence==6)
            {
                if(eeprom[SENSOR_TYPE+kanal] &0x02) // DHT sensor starts answering directly
                {
                    if(eeprom[SENSOR_TYPE+kanal] &0x20) // Generate reset pulse for DHT 1x
                        dht1x_init(kanal);
                    dht_ow_receive(kanal);  // Read DHT sensor
                }

                if (kanal<3)
                    kanal++;
                else
                {
                    sequence = 1;
                }
            }

            // Something went wrong
            else if(sequence>6)
                while(1);

        } // end if(APPLICATION_RUN)




        // Telegrammverarbeitung
        if (tel_arrived || tel_sent) {
            tel_sent=0;
            process_tel();
        }
        else {
            for(n=0;n<100;n++);     // falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
        }

        // Prog Taster und LED bedienen
        TASTER=1;       // Pin als Eingang schalten um Taster abzufragen
        if(!TASTER){    // Taster gedrückt
            if(tasterpegel<127) tasterpegel++;
            else{
                if(!tastergetoggelt)status60^=0x81; // Prog-Bit und Parity-Bit im system_state toggeln
                tastergetoggelt=1;
            }
        }
        else {
            if(tasterpegel>0) tasterpegel--;
            else tastergetoggelt=0;
        }
        TASTER=!(status60 & 0x01);  // LED entsprechend Prog-Bit schalten (low=LED an)

        } while(1);
}
