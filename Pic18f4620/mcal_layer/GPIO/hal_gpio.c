/* 
 * File:   hal_gpio.c
 * Author: T-BOX
 *
 * Created on August 22, 2023, 3:39 PM
 */
#include "hal_gpio.h"

volatile uint8 *tris_register[]={&TRISA,&TRISB,&TRISC,&TRISD,&TRISE};
volatile uint8 *lat_register[]={&LATA,&LATB,&LATC,&LATD,&LATE};
volatile uint8 *port_register[]={&PORTA,&PORTB,&PORTC,&PORTD,&PORTE};
/**
 * 
 * @param pin_config
 * @return 
 */
#if pin_configurations == Enable
Std_returntype gpio_pin_direction_intialize(const pin_config_t *pin_config){
          Std_returntype ret =  E_ok  ;
          if(NULL==pin_config|| pin_config->pin>  MAX_NUMBER -1 ){
             ret=E_Not_ok ; }
             else{
          switch(pin_config ->direction){
             
              case  OUTPUT :
                  CLR_BIT(*tris_register[pin_config->port],pin_config->pin);
                  break;
                  case  INPUT :
                  SET_BIT(*tris_register[pin_config->port],pin_config->pin);
                  break;
              default: ret = E_Not_ok ;
          } }
          return ret ;
             
}
#endif
                                                                            
         /**
          * 
          * @param pin_config
          * @param direction_status
          * @return 
          */ 
#if pin_configurations == Enable

Std_returntype gpio_pin_get_direction_status(const pin_config_t *pin_config ,direction_t *direction_status){
     Std_returntype ret =  E_ok  ;
          if(NULL==pin_config || NULL==direction_status|| pin_config->pin>  MAX_NUMBER -1 ){
             ret=E_Not_ok ; }
             else{
          *direction_status=  READ_BIT(*tris_register[pin_config->port],pin_config->pin);
             }
     return ret ;
}
#endif
   /**
    * 
    * @param pin_config
    * @param logic
    * @return 
    */ 
#if pin_configurations == Enable
Std_returntype gpio_pin_write_logic (const pin_config_t *pin_config , logic_t logic){
    Std_returntype ret =  E_ok  ;
          if(NULL==pin_config || pin_config->pin>  MAX_NUMBER -1 ){
             ret= E_Not_ok ; }
             else{
               switch( logic){
             
              case  LOW :
                  CLR_BIT(*lat_register[pin_config->port],pin_config->pin);
                  break;
                  case HIGH :
                  SET_BIT(*lat_register[pin_config->port],pin_config->pin);
                  break;
              default: ret = E_Not_ok ;}}
    return ret;


}
#endif
/**
 * 
 * @param pin_config
 * @param logic
 * @return 
 */
#if pin_configurations == Enable
Std_returntype gpio_pin_read_logic (const pin_config_t *pin_config , logic_t *logic){
    Std_returntype ret =  E_ok  ;
          if(NULL==pin_config || NULL==logic || pin_config->pin>  MAX_NUMBER -1 ){
             ret=E_Not_ok ; }
             else{
            *logic=  READ_BIT(*port_register[pin_config->port],pin_config->pin);}
     return ret ;



}
#endif
/**
 * 
 * @param pin_config
 * @return 
 */
#if pin_configurations == Enable
Std_returntype gpio_pin_toggle_logic (const pin_config_t *pin_config ){

Std_returntype ret =  E_ok  ;
          if(NULL==pin_config || pin_config->pin>  MAX_NUMBER -1 ){
             ret= E_Not_ok ; }
             else{
              TOG_BIT(*lat_register[pin_config->port],pin_config->pin);
             }
    return ret;


}

Std_returntype gpio_pin_intialize(const pin_config_t *pin_config)
{
   Std_returntype ret =  E_ok  ;
          if(NULL==pin_config|| pin_config->pin>  MAX_NUMBER -1 ){
             ret=E_Not_ok ; }
             else{
              ret =gpio_pin_direction_intialize(pin_config);
              ret=gpio_pin_write_logic(pin_config,pin_config->logic);
             
             
             }


  

    return ret;


}
#endif

/**
 * 
 * @param port
 * @param direction
 * @return 
 */
#if port_configurations ==Enable
Std_returntype gpio_port_direction_intialize(port_index_t port ,uint8  direction){

Std_returntype ret =  E_ok  ;
          if(port>5 ){
             ret= E_Not_ok ; }
             else{
             *tris_register[port]=direction;
             }
    return ret;


}
Std_returntype gpio_port_get_direction_status(port_index_t port ,uint8  *direction_status){

Std_returntype ret =  E_ok  ;
          if(NULL==direction_status  &&  port>5 ){
             ret= E_Not_ok ; }
             else{
             *direction_status =*tris_register[port] ;
             }
    return ret;
} 
#endif

#if port_configurations ==Enable
Std_returntype gpio_port_write_logic (port_index_t port ,uint8 logic){

         Std_returntype ret =  E_ok  ;
          if(port>5 ){
             ret= E_Not_ok ; }
             else{
             *lat_register[port]=logic;
             }
    return ret;




}
#endif

#if port_configurations ==Enable
Std_returntype gpio_port_read_logic (port_index_t port ,uint8 *logic){
   
Std_returntype ret =  E_ok  ;
          if(NULL==logic  &&  port>5 ){
             ret= E_Not_ok ; }
             else{
             *logic =*lat_register[port] ;
             }
    return ret;



}
#endif

#if port_configurations ==Enable
Std_returntype gpio_port_toggle_logic (port_index_t port  ){

  Std_returntype ret =  E_ok  ;
          if(port>5 ){
             ret= E_Not_ok ; }
             else{
             *lat_register[port]^= port_mask;
             }
    return ret;




}
#endif
