#include "ecu_7seg.h"

/**
 * This Interface to make the needed GPIO and segment initialization
 * @param seg pointer to the segment configurations 
 * @return  Status of the function
 *          (E_OK) : The function done successfully
 *          (E_NOT_OK) : The function has issue while performing this action
 */
Std_returntype seven_segement_intialize(const segment_t *seg){
    Std_returntype ret = E_ok;
    if(NULL == seg){
        ret = E_Not_ok;
    }
    else{    
        ret = gpio_pin_intialize(&(seg->segment_pins[SEGEMENT_PIN0]));
        ret = gpio_pin_intialize(&(seg->segment_pins[SEGEMENT_PIN1]));
        ret = gpio_pin_intialize(&(seg->segment_pins[SEGEMENT_PIN2]));
        ret = gpio_pin_intialize(&(seg->segment_pins[SEGEMENT_PIN3]));
    }
    return ret;
}

/**
 * Write a number to the segment 0 ~ 9
 * @param seg pointer to the segment configurations 
 * @param number the needed number to show
 * @return  Status of the function
 *          (E_OK) : The function done successfully
 *          (E_NOT_OK) : The function has issue while performing this action
 */
Std_returntype seven_segement_write_number(const segment_t *seg, uint8 number){
    Std_returntype ret = E_ok;
    if((NULL == seg) && (number > 9)){
        ret = E_Not_ok;
    }
    else{    
        ret = gpio_pin_write_logic(&(seg->segment_pins[SEGEMENT_PIN0]), number & 0x01);
        ret = gpio_pin_write_logic(&(seg->segment_pins[SEGEMENT_PIN1]), (number>>1) & 0x01);
        ret = gpio_pin_write_logic(&(seg->segment_pins[SEGEMENT_PIN2]), (number>>2) & 0x01);
        ret = gpio_pin_write_logic(&(seg->segment_pins[SEGEMENT_PIN3]), (number>>3) & 0x01);
    }
    return ret;
}
