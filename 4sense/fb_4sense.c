/*
 *    _____ ________    __________  __  _______    __ __ _____
 *   / ___// ____/ /   / ____/ __ )/ / / / ___/   / // // ___/___  ____  ________
 *   \__ \/ __/ / /   / /_  / __  / / / /\__ \   / // /_\__ \/ _ \/ __ \/ ___/ _ \
 *  ___/ / /___/ /___/ __/ / /_/ / /_/ /___/ /  /__  _____/ /  __/ / / (__  /  __/
 * /____/_____/_____/_/   /_____/\____//____/     /_/ /____/\___/_/ /_/____/\___/
 *
 * Copyright (c) 2014-2017 Stefan Haller
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 *
 *
 * Versionen:   0.01  erste Version
 *              0.10  Diagnose GA
 *              1.0   1st Release, Fix StackPointer check, DEVICE_ID_CHECK added
 *              1.01  Bugfix, negative temperatures for DHT22 where send as positive
 *              1.02  Update Lib to V1.58, reduce power consumption
 *              1.03  Bugfix, DHT11 not working
 *
 * Com-Objekte
 * 0,2,4,6  = Temperatur
 * 1,3,5,7  = Feuchte
 * 8,9,10   = Grenzwerte Sensor 1
 * 11,12,13 = Grenzwerte Sensor 2
 * 14,15,16 = Grenzwerte Sensor 3
 * 17,18,19 = Grenzwerte Sensor 4
 * 20       = Diagnose
 */


#include "fb_app_4sense.h"
#include "4Sense_Uni.h"
#include "watchdog.h"

#ifdef DEBUG_H_
    // Setup the debug variables
    DEBUG_VARIABLES;
#endif

// Default EEPROM values
#ifdef DEVICE_ID_CHECK
  const static unsigned char dev_application_id[4] = {0x00,0x4C,0x04,0x38};
#endif


extern unsigned char __idata __at (0xFE-52) family_code[4];

#ifndef DEBUG_H_
// Wenn Debug aktiv ist werden die Werte in der restart_app() geschrieben damit die Konfiguration nicht
// immer neu geschrieben werden muss.
// Geräteparameter setzen, diese können von der ETS übschrieben werden wenn Schreibschutz nicht aktiv
static __code unsigned char __at (EEPROM_ADDR + 0x00) option_reg={0xFF};            // Option Register, ETS will write 0xFF
static __code unsigned char __at (EEPROM_ADDR + 0x01) fw_version[2]={VER_FEATURE,VER_MIN};// Man. Data, used for FW Version
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x4C};  // Herstellercode 0x004C = Robert Bosch *
static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0x04,0x38};   // 0x0438 = Selfbus 1080 4sense #
static __code unsigned char __at (EEPROM_ADDR + 0x07) vd_version={0x06};            // VD Version V0.6 #
static __code unsigned char __at (EEPROM_ADDR + 0x08) eeprom_chk_limit={0xFF};      // EEPROM Check Limit
static __code unsigned char __at (EEPROM_ADDR + 0x09) pei_type={0x00};              // Required PEI Type, written by VD
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0x00};      // PORT A Direction Bit Setting *
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_error={0xFB};             // Run Time Error Flags, set when 0
static __code unsigned int  __at (EEPROM_ADDR + 0x17) start_pa={0xFFFF};            // Default PA is 15.15.255 *
#endif



void main(void)
{
    unsigned char n, tasterpegel=0;
    __bit tastergetoggelt=0;

    unsigned char ee_local; // Zwischenspeicher um Flash zu sparen

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
        TH0 = 0;                    // Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
        TL0 = eeprom[ADDRTAB + 2];  // Nur Low Byte der PA nutzen, sonst sehr kurze Wartezeit bei 15.15.255
        TF0 = 0;                    // Überlauf-Flag zurücksetzen
        TR0 = 1;                    // Timer 0 starten
        while (!TF0)
            ;
    }
    WATCHDOG_INIT
    WATCHDOG_START

#ifdef DEVICE_ID_CHECK
    // Only start if correct application has been loaded
    for(n = 0; n<=3; n++)
    {
        if(eeprom[0x03+n] != dev_application_id[n])
        {
            EA = 0;
            START_WRITECYCLE;
            WRITE_BYTE(0x01,0x0D,0xFB); // Object Error, holds app
            STOP_WRITECYCLE;
            EA = 1;
            break;                  // Flash just once
        }
    }
#endif

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
            if (sp_max >= STACK_MAX)
            {
                EA = 0;
                START_WRITECYCLE;
                WRITE_BYTE(0x01,0x0D,0xF7)    // Indicate Stack Overflow, holds app
                STOP_WRITECYCLE;
                EA = 1;
                break;
            }

            if(RTCCON>=0x80) delay_timer();     // Realtime clock Ueberlauf

            // Get into local variable to safe flash
            ee_local = eeprom[SENSOR_TYPE+kanal];

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
                           // if(!interrupted)
                             //  family_code[kanal] |= 0x80;  // Convert done TODO maybe not needed
                            onewire_error &= ~(3<<(kanal<<1)); // Reset channel error log
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
                timercnt[12] = 0x80+7;   // wait approx. 0.9s for sensor to be done
                                        // secuence 3 set by delaytimer
                kanal = 0;
                sequence=3;             // Konvertierung abgeschlossen
            }
            // Read DS Sensor
            else if(sequence==4)        // && !TR1 // can be used to sync
            {
                if(ee_local &0x01)     // DS temperature sensor
                {
                    // Temperatur einlesen + Übergabe Sensortyp
                    th=read_temp(family_code[kanal]);   // Read sensor with detected codes
                    // interrupted/crc error -60
                    // sensor not found -61
                    if(th>-5600)
                    {
                        // Safe with offset
                        messwerte[kanal*2] = th + (signed char) eeprom[TEMP_OFFSET+ 2*kanal];

                        // Grenzwerte
                        grenzwert(kanal);

                        // Messwertdifferenz
                        send_messdiff(2*kanal);
                    }
                }
                // Prolong waiting for DHT Sensor, if any
                else if(ee_local &0x02)
                    timercnt[12] = 9;       // add approx. 1s

                // Next channel
                kanal++;
                if (kanal >3)               // Reached last channel
                {
                    timercnt[12] |= 0x80;   // start timer
                    kanal = 0;
                    sequence = 5;           // inc. by timer
                }
            }
            // Read DHT Sensor
            else if(sequence==6)
            {
                if(ee_local &0x02) // DHT sensor starts answering directly
                {
                    unsigned char dhtType;
                    if (ee_local & 0x08)
                    {
                        dhtType = DHT1x_SENSOR;
                    }
                    else
                    {
                        dhtType = DHT2x_SENSOR;
                    }

                    if(dhtType == DHT1x_SENSOR)
                    { // Generate reset pulse for DHT 1x
                        dht1x_init(kanal);
                    }
                    //family_code[kanal] = dht_ow_receive(kanal);  // Read DHT sensor, 0 if OK

                    if(!dht_ow_receive(kanal) && dht_decode(dhtType))
                    {
                        onewire_error &= ~(3<<(kanal<<1)); // Reset channel error log

                        // Safe with offset
                        messwerte[kanal*2] = dht_temp + (signed char) eeprom[TEMP_OFFSET+ 2*kanal];
                        messwerte[kanal*2+1] = dht_humid + (signed char) eeprom[HUMID_OFFSET+ 2*kanal];

                         // Grenzwerte
                         grenzwert(kanal);

                         // Messwertdifferenz
                         send_messdiff(2*kanal);
                         send_messdiff(2*kanal+1);
                    }
                    else
                        onewire_error |= bitmask_1[kanal<<1];    // not connected
                }

                // Next channel
                kanal++;
                if (kanal >3)
                {
                    sequence = 1;   // Done
                }
            }

            // Something went wrong, restart
            else if (sequence > 6)
                sequence = 1;

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
