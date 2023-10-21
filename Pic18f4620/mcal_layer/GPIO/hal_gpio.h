/* 
 * File:   hal_gpio.h
 * Author: T-BOX
 *
 * Created on August 22, 2023, 4:12 PM
 */

#ifndef HAL_GPIO_H
#define	HAL_GPIO_H

#include "pic18f4620.h"
#include "../mcal_std_types.h"
#include"../device_config.h"
#include "hal_gpio_cfg.h"

/* Section : Include */
/* Section : Macro Decleration*/
/* Section : Macro functions Decleration*/

#define pin_configurations   Enable

#define port_configurations   Enable


# define  BIT_MASK        1 
#define   MAX_NUMBER      8
#define  port_mask       0xFF
#define HWREG8(_x)           (*((volatile unit8 *)(_x)))

#define SET_BIT(REG,bit_POSN)  REG |=(BIT_MASK <<bit_POSN)
#define CLR_BIT(REG,bit_POSN)  REG &=~(BIT_MASK <<bit_POSN)
#define TOG_BIT(REG,bit_POSN)  REG ^= (BIT_MASK <<bit_POSN)
#define READ_BIT(REG,bit_POSN) ((REG>>bit_POSN) & BIT_MASK )


/* Section : data type  Decleration*/

typedef enum {
       LOW =0,
       HIGH    
}logic_t;
typedef enum {
       OUTPUT =0,
       INPUT    
}direction_t;

typedef enum {
      PIN0 =0,
       PIN1,
       PIN2,
       PIN3,
       PIN4,
       PIN5,
       PIN6,
       PIN7
}pin_index_t;
typedef enum {
    PORTA_INDEX=0,
     PORTB_INDEX,
      PORTC_INDEX,
       PORTD_INDEX,
         PORTE_INDEX,
}port_index_t;

typedef struct{
    uint8 port :  3 ;        /*@ref port_index_t*/
    uint8 pin  :   3;       /*@ref pin_index_t*/
     uint8 direction :1;     /*@ref direction_t*/
     uint8 logic :1 ;         /*@ref logic_t*/
                   
}pin_config_t;
/* Section : function Decleration*/

Std_returntype gpio_pin_direction_intialize(const pin_config_t *pin_config);
Std_returntype gpio_pin_get_direction_status(const pin_config_t *pin_config ,direction_t *direction_status);
Std_returntype gpio_pin_write_logic (const pin_config_t *pin_config , logic_t logic);
Std_returntype gpio_pin_read_logic (const pin_config_t *pin_config , logic_t *logic);
Std_returntype gpio_pin_toggle_logic (const pin_config_t *pin_config );
Std_returntype gpio_pin_intialize(const pin_config_t *pin_config);


Std_returntype gpio_port_direction_intialize(port_index_t port ,uint8  direction);
Std_returntype gpio_port_get_direction_status(port_index_t port ,uint8  *direction_status);
Std_returntype gpio_port_write_logic (port_index_t port ,uint8 logic);
Std_returntype gpio_port_read_logic (port_index_t port ,uint8 *logic);
Std_returntype gpio_port_toggle_logic (port_index_t port  );




  

#endif	/* HAL_GPIO_H */

