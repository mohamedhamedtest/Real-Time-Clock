/*
 * LED.h

 */ 


#ifndef LED_H_
#define LED_H_
#include  "../LIB/STD_TYPES.h"
/*
	Function Name        : LED_vInit
	Function Returns     : void
	Function Arguments   : unsigned char portname,unsigned char pinnumber
	Function Description : Initialize the pin as an output pin to connect the led.
*/
void LED_vInit(u8 portname,u8 pinnumber);

/*
	Function Name        : LED_vTurnOn
	Function Returns     : void
	Function Arguments   : unsigned char portname,unsigned char pinnumber
	Function Description : Turn on the led connected to the given pin and port.
*/
void LED_vTurnOn(u8 portname,u8 pinnumber);

/*
	Function Name        : LED_vTurnOff
	Function Returns     : void
	Function Arguments   : unsigned char portname,unsigned char pinnumber
	Function Description : Turn off the led connected to the given pin and port.
*/
void LED_vTurnOff(u8 portname,u8 pinnumber);

/*
	Function Name        : LED_vToggle
	Function Returns     : void
	Function Arguments   : unsigned char portname,unsigned char pinnumber
	Function Description : Toggle the led connected to the given pin and port.
*/
void LED_vToggle(u8 portname,u8 pinnumber);

/*
	Function Name        : LED_u8ReadStatus
	Function Returns     : unsigned char
	Function Arguments   : unsigned char portname,unsigned char pinnumber
	Function Description : Returns 0 if the led connected to the given port and pin is off or return 1 if it was on.
*/
unsigned char LED_u8ReadStatus(u8 portname,u8 pinnumber);

#endif /* LED_H_ */
