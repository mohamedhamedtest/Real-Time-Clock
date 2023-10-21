/* 
 * File:   application.h
 * Author: T-BOX
 *
 * Created on August 22, 2023, 5:04 PM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H
/* Section : Include */
#include "mcal_layer/interupt/mcal_external_interupt.h"
#include"Ecu_layer/../mcal_layer/ecu_led.h"
#include "Ecu_layer/../mcal_layer/ecu_button.h"
#include "Ecu_layer/../mcal_layer/ecu_relay.h"
#include "Ecu_layer/../mcal_layer/ecu_Dc mottor.h"
#include "Ecu_layer/../mcal_layer/ecu_7seg.h"
#include "Ecu_layer/../mcal_layer/ecu_keypad.h"
#include "Ecu_layer/../mcal_layer/ecu_lcd.h"
#include "EEPROM/hal_eeprom.h"
#include"mcal_layer/ADC/hal_adc.h"
#include"mcal_layer/Timer0/hal_timr0.h"
#include"mcal_layer/Timer1/hal_timer1.h"
#include"mcal_layer/Timer2/hal_timr2.h"
#include"mcal_layer/Timer3/hal_timr3.h"
#include "mcal_layer/CCP/hal_ccp.h"
#include"mcal_layer/usart/hal_usart.h"
#include"mcal_layer/I2c/hal_i2c.h"



/* Section : Macro Decleration*/
/* Section : Macro functions Decleration*/
/* Section : data type  Decleration*/
/* Section : function Decleration*/
void application_intialize (void);




#endif	/* APPLICATION_H */

