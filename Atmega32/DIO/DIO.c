
#include "../LIB/std_macros.h"
#include <avr/io.h>
#include "../LIB/STD_TYPES.h"
#include "DIO.h"
void DIO_vsetPINDir(u8 portname,unsigned char pinnumber,u8 direction)
{
	switch(portname)
	{
		
		
		case 'A':
		if(direction==1)
		{
			SET_BIT(DDRA,pinnumber);//Set the direction of the given pin in port A as output
		}
		else
		{
			CLR_BIT(DDRA,pinnumber);//Set the direction of the given pin in port A as input
		}
		break;
		case 'B':
		if(direction==1)
		{
			SET_BIT(DDRB,pinnumber);//Set the direction of the given pin in port B as output
		}
		else
		{
			CLR_BIT(DDRB,pinnumber);//Set the direction of the given pin in port B as input
		}
		break;
		case 'C':
		if(direction==1)
		{
			SET_BIT(DDRC,pinnumber);//Set the direction of the given pin in port C as output
		}
		else
		{
			CLR_BIT(DDRC,pinnumber);//Set the direction of the given pin in port C as input
		}
		break;
		case 'D':
		if(direction==1)
		{
			SET_BIT(DDRD,pinnumber);//Set the direction of the given pin in port D as output
		}
		else
		{
			CLR_BIT(DDRD,pinnumber);//Set the direction of the given pin in port D as input
		}
		break;
		default: 
		break;
	}
}


void DIO_write(u8 portname,u8 pinnumber,u8 outputvalue)
{
	switch(portname)
	{
		case 'A' :
		
		if(outputvalue==1)
		{
			SET_BIT(PORTA,pinnumber);//Set the value of the given pin in port A as High
		}
		else
		{
			CLR_BIT(PORTA,pinnumber);//Set the value of the given pin in port A as Low
		}
		break ;
		case 'B':
		
		if(outputvalue==1)
		{
			SET_BIT(PORTB,pinnumber);//Set the value of the given pin in port B as High
		}
		else
		{
			CLR_BIT(PORTB,pinnumber);//Set the value of the given pin in port B as Low
		}
		break ;
		case 'C' :
		
		if(outputvalue==1)
		{
			SET_BIT(PORTC,pinnumber);//Set the value of the given pin in port C as High
		}
		else
		{
			CLR_BIT(PORTC,pinnumber);//Set the value of the given pin in port C as Low
		}
		break ;
		case 'D':
		
		if(outputvalue==1)
		{
			SET_BIT(PORTD,pinnumber);//Set the value of the given pin in port D as High
		}
		else
		{
			CLR_BIT(PORTD,pinnumber);//Set the value of the given pin in port D as Low
		}
		break ;
		default: break ;
	}
}


unsigned char DIO_u8read(u8 portname,u8 pinnumber)
{
	unsigned char return_value=0;
	switch(portname)
	{
		case 'A' :
		return_value=READ_BIT(PINA,pinnumber);//Read the value from the given pin in port A
		break;
		
		case 'B' :
		return_value=READ_BIT(PINB,pinnumber);//Read the value from the given pin in port B
		break;
		
		case 'C' :
		return_value=READ_BIT(PINC,pinnumber);//Read the value from the given pin in port C
		break;
		
		case 'D' :
		return_value=READ_BIT(PIND,pinnumber);//Read the value from the given pin in port D
		break;
		default: 
		break;
	}
	return return_value ;
}
void DIO_toggle(u8 portname,u8 pinnumber)
{
	switch(portname)
	{
		case 'A':
		TOG_BIT(PORTA,pinnumber);//Toggle the value of the given pin in port A
		break;
		case 'B':
		TOG_BIT(PORTB,pinnumber);//Toggle the value of the given pin in port B
		break;
		case 'C':
		TOG_BIT(PORTC,pinnumber);//Toggle the value of the given pin in port C
		break;
		case 'D':
		TOG_BIT(PORTD,pinnumber);//Toggle the value of the given pin in port D
		break;
		default: break;
	}
}
void DIO_set_port_direction(u8 portname,u8 direction)
{
	switch(portname)
	{
		case 'A' :
		DDRA=direction; //set the direction of port A
		break ;
		case 'B':
		DDRB=direction; //set the direction of port B
		break ;
		case 'C' :
		DDRC=direction; //set the direction of port C
		break ;
		case 'D':
		DDRD=direction; //set the direction of port D
		break ;
		default:
		break ;
	}
	
}
void DIO_write_port(u8 portname,u8 portvalue)
{
	switch(portname)
	{
		case 'A' :
		PORTA=portvalue; //Write the given value to the port A
		break ;
		case 'B':
		PORTB=portvalue; //Write the given value to the port B
		break ;
		case 'C' :
		PORTC=portvalue; //Write the given value to the port C
		break ;
		case 'D':
		PORTD=portvalue; //Write the given value to the port D
		break ;
		default:
		 break ;
	}
}

unsigned char DIO_read_port(u8 portname)
{
	unsigned char return_val=0;
	switch(portname)
	{
		case 'A' :
		return_val=PINA; // read the value of port A 
		break ;
		case 'B':
		return_val=PINB; // read the value of port B 
		break ;
		case 'C' :
		return_val=PINC; // read the value of port C 
		break ;
		case 'D':
		return_val=PIND; // read the value of port D 
		break ;
		default:
		break ;
	}
	return return_val;
}

void DIO_vconnectpullup(char portname ,char pinnumber, char connect_pullup)
{
	switch(portname)
	{
		case 'A':
		if(connect_pullup==1)
		{
			SET_BIT(PORTA,pinnumber);
		}
		else
		{
			CLR_BIT(PORTA,pinnumber);
		}
		break;
		case 'B':
		if(connect_pullup==1)
		{
			SET_BIT(PORTB,pinnumber);
		}
		else
		{
			CLR_BIT(PORTB,pinnumber);
		}
		break;
		case 'C':
		if(connect_pullup==1)
		{
			SET_BIT(PORTC,pinnumber);
			
		}
		else
		{
			CLR_BIT(PORTC,pinnumber);
		}
		break;
		case 'D':
		if(connect_pullup==1)
		{
			SET_BIT(PORTD,pinnumber);
			
		}
		else
		{
			CLR_BIT(PORTD,pinnumber);
		}
		break;
		
	}
}

void write_low_nibble(u8 portname,u8 value)
{
	value&=0x0f;
	switch(portname)
	{
		case 'A':
		PORTA&=0xf0;
		PORTA|=value;
		break;

		case 'B':
		PORTB&=0xf0;
		PORTB|=value;
		break;

		case 'C':
		PORTC&=0xf0;
		PORTC|=value;
		break;

		case 'D':
		PORTD&=0xf0;
		PORTD|=value;
		break;

	}
}

void write_high_nibble(u8 portname,u8 value){
	value<<=4;
	switch(portname)
	{
		case 'A':
		PORTA&=0x0f;
		PORTA|=value;
		break;

		case 'B':
		PORTB&=0x0f;
		PORTB|=value;
		break;

		case 'C':
		PORTC&=0x0f;
		PORTC|=value;
		break;

		case 'D':
		PORTD&=0x0f;
		PORTD|=value;
		break;

	}
}
