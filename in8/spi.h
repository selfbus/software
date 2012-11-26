/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef SPI_H_
#define SPI_H_


#define CLK P0_0
#define SER_IN P0_1
#define READ P0_2
#define SER_OUT P0_3
#define WRITE P0_5

//extern unsigned char spi_in(void);
//extern void spi_out(unsigned char daten);
extern unsigned char spi_in_out(void);

#endif /* SPI_H_ */
