/* 
 * File:   ecu_led.h
 * Author: T-BOX
 *
 * Created on August 22, 2023, 4:53 PM
 */

#ifndef ECU_LED_H
#define	ECU_LED_H
#include"ecu_led_con.h"
#include "../mcal_layer/GPIO/hal_gpio.h"

/* Section : Include */
/* Section : Macro Decleration*/
/* Section : Macro functions Decleration*/
/* Section : data type  Decleration*/

typedef enum{
    LED_OFF,
    LED_ON
}led_status_t;

typedef struct{
    uint8 port_name : 4;
    uint8 pin : 3;
    uint8 led_status : 1;
}led_t;


 Std_returntype led_initialize(const led_t *led);
 Std_returntype led_turn_on(const led_t *led);
 Std_returntype led_turn_off(const led_t *led);
 Std_returntype led_turn_toggle(const led_t *led);

/* Section : function Decleration*/

#endif	/* ECU_LED_H */

