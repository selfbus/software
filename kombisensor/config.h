/**
 * config.h
 */

#ifndef KS_CONFIG_H_
#define KS_CONFIG_H_

/**
 * @def WATCHDOG_ENABLED
 * Enables watchdog. Make sure *.hex size doesn't exceed 0x1CFF (start of eeprom 0x1D00)
 * @note Watchdog must also be enabled in Flashmagic
 */
//#define WATCHDOG_ENABLED

/**
 * @def DS18S20
 * If set, compiles for the S version of the DS18x20 otherwise for the B version
 */
//#define DS18S20

/**
 * @def DEBUG
 * Enable debugging functionality e.g. raising temperature
 */
//#define DEBUG

#endif /* KS_CONFIG_H_ */
