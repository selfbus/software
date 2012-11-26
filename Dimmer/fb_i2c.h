/*
 * fb_i2c.h
 *
 *  Created on: 02.01.2009
 *      Author: Richard
 */

#ifndef FB_I2C_H_
#define FB_I2C_H_

#define MAX_I2C_ZEIT 3000

unsigned char i2c_wait(void);
unsigned char i2c_send_daten(unsigned char K1,unsigned char K2);
void i2c_ma_init(void);
void i2c_sla_init(void);

#endif /* FB_I2C_H_ */
