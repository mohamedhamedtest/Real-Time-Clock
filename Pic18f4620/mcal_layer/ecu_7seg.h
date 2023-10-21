/* 
 * File:   ecu_7seg.h
 * Author: T-BOX
 *
 * Created on August 29, 2023, 5:49 PM
 */

#ifndef ECU_7SEG_H
#define	ECU_7SEG_H
#include "../mcal_layer/GPIO/hal_gpio.h"
#include"ecu_7seg_coc.h"



/* Section: Macro Declarations */
#define SEGEMENT_PIN0 0
#define SEGEMENT_PIN1 1
#define SEGEMENT_PIN2 2
#define SEGEMENT_PIN3 3

/* Section: Macro Functions Declarations */

/* Section: Data Type Declarations */
typedef enum{
    SEGMENT_COMMON_ANODE,
    SEGMENT_COMMON_CATHODE
}segment_type_t;

typedef struct{
    pin_config_t segment_pins[4];
    segment_type_t segment_type;
}segment_t;

/* Section: Function Declarations */
Std_returntype seven_segement_intialize(const segment_t *seg);
Std_returntype seven_segement_write_number(const segment_t *seg, uint8 number);

#endif	/* ECU_7SEG_H */

