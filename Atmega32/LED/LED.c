/*
* LED.c
*
*
*/
#include  "../LIB/STD_TYPES.h"
#include "../DIO/DIO.h"
void LED_vInit(u8 portname,u8 pinnumber)
{
	DIO_vsetPINDir(portname,pinnumber,1);//Set the given pin in the given port as an output
}
void LED_vTurnOn(u8 portname,u8 pinnumber)
{
	DIO_write(portname,pinnumber,1);//Set the given pin in the given port to one(on)
}
void LED_vTurnOff(u8 portname,u8 pinnumber)
{
	DIO_write(portname,pinnumber,0);//Set the given pin in the given port to zero(off)
}
void LED_vToggle(u8 portname,u8 pinnumber)
{
	DIO_toggle(portname,pinnumber);//Set the given pin in the given port to zero if it is one or set it to one if it is zero
}

