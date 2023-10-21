#include "main.h"
volatile unsigned char seconds_counter=0;
unsigned char minutes_counter=0,hours_counter=0;
unsigned char value,first_digit,second_digit;
int main(void)
{
	keypad_vInit();
	LED_vInit('A',3);
	LCD_vInit();
	seven_seg_vinit('B');
	SET_BIT(DDRC,0);
    SET_BIT(DDRC,1);
	SET_BIT(DDRC,2);
	SET_BIT(DDRC,3);
	SET_BIT(DDRC,4);
	SET_BIT(DDRC,5);
	LCD_vSend_string("press 1 to");
	LCD_movecursor(2,1);
	LCD_vSend_string("set clock");
	timer2_overflow_init_interrupt();
	
	while(1)
	{
		value=keypad_u8check_press();
		if (value!=NOTPRESSED)
		{
			if (value=='1')
			{
				LED_vTurnOff('A',3);
			
				LCD_clearscreen();
				LCD_vSend_string("hours=--");
				LCD_movecursor(1,7);
				_delay_ms(500);
				do
				{
					first_digit=keypad_u8check_press();
					
				} while (first_digit==NOTPRESSED);
				LCD_vSend_char(first_digit);
				_delay_ms(300);
				do
				{
					second_digit=keypad_u8check_press();
					
				} while (second_digit==NOTPRESSED);
				LCD_vSend_char(second_digit);
				_delay_ms(300);
				hours_counter=(second_digit-48)+10*(first_digit-48);
				LCD_clearscreen();
				
				LCD_vSend_string("minutes=--");
				LCD_movecursor(1,9);
				do
				{
					first_digit=keypad_u8check_press();
					
				} while (first_digit==NOTPRESSED);
				LCD_vSend_char(first_digit);
				_delay_ms(300);
				do
				{
					second_digit=keypad_u8check_press();
					
				} while (second_digit==NOTPRESSED);
				LCD_vSend_char(second_digit);
				_delay_ms(300);
				minutes_counter=(second_digit-48)+10*(first_digit-48);
				LCD_clearscreen();
				
				LCD_vSend_string("seconds=--");
				LCD_movecursor(1,9);
				
				do 
				{
					first_digit=keypad_u8check_press();
					
				} while (first_digit==NOTPRESSED);
				LCD_vSend_char(first_digit);
				_delay_ms(300);
				do
				{
					second_digit=keypad_u8check_press();
					
				} while (second_digit==NOTPRESSED);
				LCD_vSend_char(second_digit);
				_delay_ms(300);
				seconds_counter=(second_digit-48)+10*(first_digit-48);
				LCD_clearscreen();
				LCD_vSend_string("press 1 to");
				LCD_movecursor(2,1);
				LCD_vSend_string("set clock");
			}
			else
			{


				LCD_clearscreen();
				LCD_vSend_string("wrong choice");
				//_delay_ms(1000);
				LED_vTurnOn('A',3);
				_delay_ms(1000);

					LED_vTurnOff('A',3);
				LCD_clearscreen();
				LCD_vSend_string("press 1 to");
				LCD_movecursor(2,1);
				LCD_vSend_string("set clock");
			}
		}
		
		SET_BIT(PORTC,1);
		SET_BIT(PORTC,2);
		SET_BIT(PORTC,3);
		SET_BIT(PORTC,4);
		SET_BIT(PORTC,5);
		CLR_BIT(PORTC,0);
		seven_seg_write('B',seconds_counter%10);
		_delay_ms(5);
		
		SET_BIT(PORTC,0);
		SET_BIT(PORTC,2);
		SET_BIT(PORTC,3);
		SET_BIT(PORTC,4);
		SET_BIT(PORTC,5);
		CLR_BIT(PORTC,1);
		seven_seg_write('B',seconds_counter/10);
		_delay_ms(5);
		
		SET_BIT(PORTC,0);
		SET_BIT(PORTC,1);
		SET_BIT(PORTC,3);
		SET_BIT(PORTC,4);
		SET_BIT(PORTC,5);
		CLR_BIT(PORTC,2);
		seven_seg_write('B',minutes_counter%10);
		_delay_ms(5);
		
		SET_BIT(PORTC,0);
		SET_BIT(PORTC,1);
		SET_BIT(PORTC,2);
		SET_BIT(PORTC,4);
		SET_BIT(PORTC,5);
		CLR_BIT(PORTC,3);
		seven_seg_write('B',minutes_counter/10);
		_delay_ms(5);
		
		SET_BIT(PORTC,0);
		SET_BIT(PORTC,1);
		SET_BIT(PORTC,2);
		SET_BIT(PORTC,3);
		SET_BIT(PORTC,5);
		CLR_BIT(PORTC,4);
		seven_seg_write('B',hours_counter%10);
		_delay_ms(5);
		
		SET_BIT(PORTC,0);
		SET_BIT(PORTC,1);
		SET_BIT(PORTC,2);
		SET_BIT(PORTC,3);
		SET_BIT(PORTC,4);
		CLR_BIT(PORTC,5);
		seven_seg_write('B',hours_counter/10);
		_delay_ms(5);
		
		if (seconds_counter==60)
		{
			seconds_counter=0;
			minutes_counter++;
		}
		if (minutes_counter==60)
		{
			minutes_counter=0;
			hours_counter++;
		}
		if (hours_counter==24)
		{
			hours_counter=0;
		}
	}
	
}

ISR(TIMER2_OVF_vect)
{
	seconds_counter++;
	
}
