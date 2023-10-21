/* 
 * File:   ecu_led.c
 * Author: T-BOX
 *
 * Created on August 22, 2023, 4:53 PM
 */
#include "ecu_led.h"

/**
 * 
 * @param led
 * @return 
 */
 Std_returntype led_initialize(const led_t *led){
 Std_returntype ret =E_ok;
 
    if(NULL == led){
        ret = E_Not_ok;
    }
    else{
       pin_config_t   object = {.port=led->port_name,.pin=led->pin, .direction=OUTPUT,.logic=led->led_status};
        gpio_pin_intialize(&object);
      
    }
    return ret;}
 
 
 
 
 /**
  * 
  * @param led
  * @return 
  */
 Std_returntype led_turn_on(const led_t *led){
     Std_returntype ret =E_ok;
    if(NULL == led){
        ret = E_Not_ok;
    }
  else{
        pin_config_t object = {.port=led->port_name,.pin=led->pin, .direction=OUTPUT,.logic=led->led_status};
       gpio_pin_write_logic(&object , HIGH  );
      
    }
    return ret;
 
 
 
 }
 
 
 /**
  * 
  * @param led
  * @return 
  */
 Std_returntype led_turn_off(const led_t *led){
 
     Std_returntype ret =E_ok;
    if(NULL == led){
        ret = E_Not_ok;
    }
    else{
      pin_config_t object = {.port=led->port_name,.pin=led->pin, .direction=OUTPUT,.logic=led->led_status};
       gpio_pin_write_logic(&object ,  LOW  );
    }
    return ret;
 
 }
 /**
  * 
  * @param led
  * @return 
  */
 
 Std_returntype led_turn_toggle(const led_t *led){
 Std_returntype ret =E_ok;
    if(NULL == led){
        ret = E_Not_ok;
    }
    else{
        pin_config_t object = {.port=led->port_name,.pin=led->pin, .direction=OUTPUT,.logic=led->led_status};
        gpio_pin_toggle_logic(&object );
    }
    return ret;
 
 
 }
