/* 
 * File:   ecu_keypad.h
 * Author: T-BOX
 *
 * Created on August 31, 2023, 8:44 PM
 */

#ifndef ECU_KEYPAD_H
#define	ECU_KEYPAD_H
#include "../mcal_layer/GPIO/hal_gpio.h"
#include"ecu_keypad_con.h"


#define NO_PRESSED_SWITCH    (0xff)

#define ECU_KEYPAD_ROWS    4
#define ECU_KEYPAD_COLUMNS 4 

/* ----------------- Macro Functions Declarations -----------------*/

/* ----------------- Data Type Declarations -----------------*/
typedef struct{
    pin_config_t keypad_row_pins[ECU_KEYPAD_ROWS];
    pin_config_t keypad_columns_pins[ECU_KEYPAD_COLUMNS];
}keypad_t;

/* ----------------- Software Interfaces Declarations -----------------*/
Std_returntype keypad_initialize(const keypad_t *_keypad_obj);
Std_returntype keypad_get_value(const keypad_t *_keypad_obj, uint8 *value);
Std_returntype keypad_get_value_blocking(const keypad_t *_keypad_obj, uint8 *value);
Std_returntype keypad_read_switch(const keypad_t *keypad,uint8 *status);
#endif	/* ECU_KEYPAD_H */

