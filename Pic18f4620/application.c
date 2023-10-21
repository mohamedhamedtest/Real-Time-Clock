/*
 * File:   main.c
 * Author: T-BOX
 *
 * Created on August 22, 2023, 3:39 PM
 */


#include"application.h"
#include <xc.h>
#define _XTAL_FREQ 8000000//define crystal frequency to 20MHz


#include "application.h"


led_t led1={
.port_name=  PORTA_INDEX,
.pin=       PIN0,
.led_status=LOW
};
led_t led2={
.port_name=  PORTA_INDEX,
.pin=       PIN1,
.led_status=LOW
};
timer0_t timer0_counter_obj = {
    .TMR0_InterruptHandler = NULL ,
    .timer0_mode = TIMER0_COUNTER_MODE,
    .timer0_counter_edge = TIMER0_COUNTER_RISING_EDGE_CFG,
    .timer0_register_size = TIMER0_16BIT_REGISTER_MODE,
    .prescaler_enable = TIMER0_PRESCALER_DISABLE_CFG,
    .timer0_preload_value = 0
};

pin_config_t seg_pin_1 ={
    .port = PORTB_INDEX    , 
    .pin = PIN0 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 

pin_config_t seg_pin_2 ={
    .port = PORTB_INDEX    , 
    .pin = PIN1 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 

pin_config_t seg_pin_3 ={
    .port = PORTB_INDEX    , 
    .pin = PIN2 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 

pin_config_t seg_pin_4 ={
    .port = PORTB_INDEX    , 
    .pin = PIN3 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 
pin_config_t seg_pin_5 ={
    .port = PORTB_INDEX    , 
    .pin = PIN4 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 

pin_config_t seg_pin_6 ={
    .port = PORTB_INDEX    , 
    .pin = PIN5 , 
    .logic = LOW , 
    .direction = OUTPUT ,
}  ; 




chr_lcd_4bit_t lcd_1 = {
    .lcd_rs.port = PORTE_INDEX,
    .lcd_rs.pin = PIN0,
    .lcd_rs.direction = OUTPUT,
    .lcd_rs.logic = LOW,
    .lcd_en.port = PORTE_INDEX,
    .lcd_en.pin = PIN1,
    .lcd_en.direction = OUTPUT,
    .lcd_en.logic = LOW,
    .lcd_data[0].port = PORTC_INDEX,
    .lcd_data[0].pin = PIN4,
    .lcd_data[0].direction = OUTPUT,
    .lcd_data[0].logic = LOW,
    .lcd_data[1].port = PORTC_INDEX,
    .lcd_data[1].pin = PIN5,
    .lcd_data[1].direction = OUTPUT,
    .lcd_data[1].logic = LOW,
    .lcd_data[2].port = PORTC_INDEX,
    .lcd_data[2].pin = PIN6,
    .lcd_data[2].direction = OUTPUT,
    .lcd_data[2].logic = LOW,
    .lcd_data[3].port = PORTC_INDEX,
    .lcd_data[3].pin = PIN7,
    .lcd_data[3].direction = OUTPUT,
    .lcd_data[3].logic = LOW,
};

keypad_t keypad1 = {
    .keypad_row_pins[0].port = PORTD_INDEX,
    .keypad_row_pins[0].pin = PIN0,
    .keypad_row_pins[0].direction = OUTPUT,
    .keypad_row_pins[0].logic = LOW,
    .keypad_row_pins[1].port = PORTD_INDEX,
    .keypad_row_pins[1].pin = PIN1,
    .keypad_row_pins[1].direction =OUTPUT,
    .keypad_row_pins[1].logic = LOW,
    .keypad_row_pins[2].port = PORTD_INDEX,
    .keypad_row_pins[2].pin = PIN2,
    .keypad_row_pins[2].direction = OUTPUT,
    .keypad_row_pins[2].logic = LOW,
    .keypad_row_pins[3].port = PORTD_INDEX,
    .keypad_row_pins[3].pin = PIN3,
    .keypad_row_pins[3].direction = OUTPUT,
    .keypad_row_pins[3].logic = LOW,
    .keypad_columns_pins[0].port = PORTD_INDEX,
    .keypad_columns_pins[0].pin = PIN4,
    .keypad_columns_pins[0].direction = INPUT,
    .keypad_columns_pins[0].logic = LOW,
    .keypad_columns_pins[1].port = PORTD_INDEX,
    .keypad_columns_pins[1].pin = PIN5,
    .keypad_columns_pins[1].direction = INPUT,
    .keypad_columns_pins[1].logic = LOW,
    .keypad_columns_pins[2].port = PORTD_INDEX,
    .keypad_columns_pins[2].pin = PIN6,
    .keypad_columns_pins[2].direction = INPUT,
    .keypad_columns_pins[2].logic = LOW,
    .keypad_columns_pins[3].port = PORTD_INDEX,
    .keypad_columns_pins[3].pin = PIN7,
    .keypad_columns_pins[3].direction = INPUT,
    .keypad_columns_pins[3].logic = LOW,
};


segment_t segment_1 = {
    .segment_type = SEGMENT_COMMON_ANODE , 
    .segment_pins[0].direction = OUTPUT , 
    .segment_pins[0].logic = LOW , 
    .segment_pins[0].pin = PIN0 , 
    .segment_pins[0].port = PORTC_INDEX , 
    .segment_pins[1].direction = OUTPUT , 
    .segment_pins[1].logic = LOW , 
    .segment_pins[1].pin = PIN1 , 
    .segment_pins[1].port = PORTC_INDEX , 
    .segment_pins[2].direction = OUTPUT , 
    .segment_pins[2].logic = LOW , 
    .segment_pins[2].pin = PIN2 , 
    .segment_pins[2].port = PORTC_INDEX , 
    .segment_pins[3].direction =OUTPUT , 
    .segment_pins[3].logic = LOW , 
    .segment_pins[3].pin = PIN3 , 
    .segment_pins[3].port = PORTC_INDEX , 
} ; 
uint32 Counter_Value =0 ,Seconds=0 ,  Minutes=59 , Hours=23 ; 
uint8 key_value,value11 , value12 , value21 , value22  , value31 ,value32 , counter = 0;
int main() { 
    Std_returntype ret = E_Not_ok;
    application_intialize();
    
     lcd_4bit_send_string_pos(&lcd_1,1,3,"WELCOME TO");
     __delay_ms(250);
       lcd_4bit_send_string_pos(&lcd_1,2,3,"MOHAMED Gazar");
            __delay_ms(1000);
             lcd_4bit_send_command(&lcd_1,_LCD_CLEAR);
    ret = lcd_4bit_send_string_pos(&lcd_1 ,1 ,1 , "Press 1 to set") ; 
             lcd_4bit_send_string_pos(&lcd_1,2,1,"set clock");
                    __delay_ms(250);

    while(1){

 

        for(counter=0; counter<=50; counter++){
            ret= Timer0_Read_Value(&timer0_counter_obj , &Counter_Value) ; 
            if(60 == Counter_Value){
                ret = Timer0_Write_Value(&timer0_counter_obj ,0 ) ; 
               
                Minutes ++ ; 
                
                if(60 == Minutes){
                    Hours++ ; 
                    Minutes = 0 ; 
                    if(24 == Hours){
                        Hours = 0 ; 
                    }
                }
            }
            ret = seven_segement_write_number(&segment_1, (uint8)(Counter_Value%10));
            ret = gpio_pin_write_logic(&seg_pin_6, HIGH);
            ret = keypad_get_value(&keypad1 , &key_value) ; 
            ret = gpio_pin_write_logic(&seg_pin_6, LOW);
            ret = seven_segement_write_number(&segment_1, (uint8)(Counter_Value/10));
            ret = gpio_pin_write_logic(&seg_pin_5, HIGH);
            __delay_ms(2) ;
            ret = gpio_pin_write_logic(&seg_pin_5, LOW);
            
            ret = seven_segement_write_number(&segment_1, (uint8)(Minutes%10));
            ret = gpio_pin_write_logic(&seg_pin_4, HIGH);
            __delay_ms(2) ;
            ret = gpio_pin_write_logic(&seg_pin_4, LOW);
            ret = seven_segement_write_number(&segment_1, (uint8)(Minutes/10));
            ret = gpio_pin_write_logic(&seg_pin_3, HIGH);
            __delay_ms(2) ;
            ret = gpio_pin_write_logic(&seg_pin_3, LOW);
            
            ret = seven_segement_write_number(&segment_1, (uint8)(Hours%10));
            ret = gpio_pin_write_logic(&seg_pin_2, HIGH);
            __delay_ms(2) ; 
            ret = gpio_pin_write_logic(&seg_pin_2, LOW);
            ret = seven_segement_write_number(&segment_1, (uint8)(Hours/10));
            ret = gpio_pin_write_logic(&seg_pin_1, HIGH);
            __delay_ms(2) ; 
            ret = gpio_pin_write_logic(&seg_pin_1, LOW);
            
               ret=keypad_read_switch(&keypad1,&key_value);

      if(key_value!=NO_PRESSED_SWITCH){
               if('1' == key_value){
                      led_turn_on(&led2);
             ret = lcd_4bit_send_command(&lcd_1 , _LCD_CLEAR) ; 
                __delay_ms(200) ; 
                ret = lcd_4bit_send_string_pos(&lcd_1 ,1 ,1 , "Seconds: ") ;
                ret = keypad_get_value_blocking(&keypad1 , &value11) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,9,value11) ; 
                
                ret = keypad_get_value_blocking(&keypad1 , &value12) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,10,value12) ;
                __delay_ms(500) ; 
                
                ret = lcd_4bit_send_command(&lcd_1 , _LCD_CLEAR) ; 

                ret = lcd_4bit_send_string_pos(&lcd_1 ,1 ,1 , "Minutes: ") ;
                ret = keypad_get_value_blocking(&keypad1 , &value21) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,9,value21) ; 
                
                ret = keypad_get_value_blocking(&keypad1 , &value22) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,10,value22) ;
                __delay_ms(500) ; 
                
                ret = lcd_4bit_send_command(&lcd_1 , _LCD_CLEAR) ; 
                ret = lcd_4bit_send_string_pos(&lcd_1 ,1 ,1 , "Hours: ") ;
                ret = keypad_get_value_blocking(&keypad1 , &value31) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,8,value31) ; 
                
                ret = keypad_get_value_blocking(&keypad1 , &value32) ; 
                ret =lcd_4bit_send_char_data_pos(&lcd_1 ,1 ,9,value32) ;
                __delay_ms(500) ; 
                
                Seconds = (value11 -'0')*10 + (value12 - '0') ; 
                int mul_seconds = Seconds/60 ; 
                Seconds %= 60 ; 
                ret = Timer0_Write_Value(&timer0_counter_obj , Seconds) ;
                Minutes = (value21 -'0')*10 + (value22 - '0') ;
                int mul_minutes = Minutes/60 ; 
                Minutes = Minutes%60 +mul_seconds ; 
                Hours = (value31 -'0')*10 + (value32 - '0') ; 
                Hours = Hours%24 +mul_minutes ; 
                                       led_turn_off(&led2);

                ret = lcd_4bit_send_command(&lcd_1 , _LCD_CLEAR) ; 
                ret = lcd_4bit_send_string_pos(&lcd_1 ,1 ,1 , "Press 1 to set") ; 
                  lcd_4bit_send_string_pos(&lcd_1,2,1,"set clock");
                key_value = '#' ; 
                
                
            }

            
               else{
         key_value--;
                ret = lcd_4bit_send_command(&lcd_1, _LCD_CLEAR);
                __delay_ms(50);
                ret = lcd_4bit_send_string_pos(&lcd_1, 1, 1, "Wrong Password");
                       led_turn_on(&led1);
                        __delay_ms(500);
                         led_turn_off(&led1);
                ret = lcd_4bit_send_command(&lcd_1, _LCD_CLEAR);
                __delay_ms(50);
             lcd_4bit_send_string_pos(&lcd_1,1,1,"press 1 to");
             lcd_4bit_send_string_pos(&lcd_1,2,1,"set clock");
               }}

        }


}
    return (EXIT_SUCCESS);
}
void application_intialize(void){
    Std_returntype ret = E_Not_ok;
     ret = keypad_initialize(&keypad1) ; 
    ret = Timer0_Init(&timer0_counter_obj) ; 
    ret = lcd_4bit_intialize(&lcd_1) ; 
    ret = gpio_pin_intialize(&seg_pin_1) ; 
    ret = gpio_pin_intialize(&seg_pin_2) ; 
    ret = gpio_pin_intialize(&seg_pin_3) ; 
    ret = gpio_pin_intialize(&seg_pin_4) ; 
    ret = gpio_pin_intialize(&seg_pin_5) ; 
    ret = gpio_pin_intialize(&seg_pin_6) ; 
    ret = seven_segement_intialize(&segment_1) ; 
   ret =led_initialize(&led1);
     ret =led_initialize(&led2);
    

}
