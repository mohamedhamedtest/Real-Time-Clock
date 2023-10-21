
#include"ecu_keypad.h"


#include <xc.h>
#define _XTAL_FREQ 4000000 
static const uint8 btn_values[ECU_KEYPAD_ROWS][ECU_KEYPAD_COLUMNS] = {
                                                                        {'7', '8', '9', '/'},
                                                                        {'4', '5', '6', '*'},
                                                                        {'1', '2', '3', '-'},
                                                                        {'#', '0', '=', '+'}
                                                                     };


volatile uint8 *port_registers[] = {&PORTA, &PORTB, &PORTC, &PORTD, &PORTE};


Std_returntype keypad_initialize(const keypad_t *_keypad_obj){


Std_returntype ret =E_ok;
 uint8 rows_counter = ZERO_INIT, columns_counter = ZERO_INIT;
    if(NULL == _keypad_obj){
        ret = E_Not_ok;
    }
    else{
         for(rows_counter=ZERO_INIT; rows_counter<ECU_KEYPAD_ROWS; rows_counter++){
            ret = gpio_pin_intialize(&(_keypad_obj->keypad_row_pins[rows_counter]));
        }
        for(columns_counter=ZERO_INIT; columns_counter<ECU_KEYPAD_COLUMNS; columns_counter++){
            ret = gpio_pin_direction_intialize(&(_keypad_obj->keypad_columns_pins[columns_counter]));
        }
    }
       
    
    return ret;
 



}
Std_returntype keypad_get_value(const keypad_t *_keypad_obj, uint8 *value){
    Std_returntype ret = E_ok;
    uint8 l_rows_counter = ZERO_INIT, l_columns_counter = ZERO_INIT, l_counter = ZERO_INIT;
    uint8 column_logic = ZERO_INIT;
    if((NULL == _keypad_obj) || (NULL == value)){
        ret = E_Not_ok;
    }
    else{    
        for(l_rows_counter=ZERO_INIT; l_rows_counter<ECU_KEYPAD_ROWS; l_rows_counter++){
            for(l_counter=ZERO_INIT; l_counter<ECU_KEYPAD_ROWS; l_counter++){
                ret = gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[l_counter]), LOW);
            }
            gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[l_rows_counter]), HIGH);
            __delay_ms(1);
            for(l_columns_counter=ZERO_INIT; l_columns_counter<ECU_KEYPAD_COLUMNS; l_columns_counter++){
                ret = gpio_pin_read_logic(&(_keypad_obj->keypad_columns_pins[l_columns_counter]), &column_logic);
                if(HIGH == column_logic){
                    *value = btn_values[l_rows_counter][l_columns_counter];
                }
            }
        }
    }
    return ret;
}




Std_returntype keypad_read_switch(const keypad_t *keypad,uint8 *status)
{
          Std_returntype ret = E_ok;
          logic_t status_pin=LOW;
          /*this line if the user not pressed any switch */
          *status=NO_PRESSED_SWITCH;
                  
    if((NULL == keypad)||(NULL == status)){
        ret = E_Not_ok;
    }
    else{
        for(int row=0; row<4; row++)
        {
            for(int i=0; i<4; i++)
            {
                ret=gpio_pin_write_logic(&(keypad->keypad_row_pins[i]),LOW);
            }
            ret=gpio_pin_write_logic(&(keypad->keypad_row_pins[row]),HIGH);
          
          
            
            for(int col=0; col<4; col++)
            {
                ret=gpio_pin_read_logic(&(keypad->keypad_columns_pins[col]),&status_pin);
                if(status_pin == HIGH)
                {
                     while(status_pin == 1)
                     {
                          ret=gpio_pin_read_logic(&(keypad->keypad_columns_pins[col]),&status_pin);
                     }
                    *status=btn_values[row][col];
                   
                }
               
            }
            
             
           
        }
     
        
    }
    return ret;
}






Std_returntype keypad_get_value_blocking(const keypad_t *_keypad_obj, uint8 *value){
    Std_returntype ret = E_ok;
    uint8 l_rows_counter = ZERO_INIT, l_columns_counter = ZERO_INIT, l_counter = ZERO_INIT;
    uint8 column_logic = ZERO_INIT;
    if((NULL == _keypad_obj) || (NULL == value)){
        return E_Not_ok;
    }
    else{    
        while(1){
            for(l_rows_counter=ZERO_INIT; l_rows_counter<ECU_KEYPAD_ROWS; l_rows_counter++){
                for(l_counter=ZERO_INIT; l_counter<ECU_KEYPAD_ROWS; l_counter++){
                    ret = gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[l_counter]), LOW);
                }
                gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[l_rows_counter]), HIGH);
                __delay_ms(10);
                for(l_columns_counter=ZERO_INIT; l_columns_counter<ECU_KEYPAD_COLUMNS; l_columns_counter++){
                    ret = gpio_pin_read_logic(&(_keypad_obj->keypad_columns_pins[l_columns_counter]), &column_logic); 
                    if(HIGH == READ_BIT(*port_registers[_keypad_obj->keypad_columns_pins[l_columns_counter].port], _keypad_obj->keypad_columns_pins[l_columns_counter].pin) ){
                        while(READ_BIT(*port_registers[_keypad_obj->keypad_columns_pins[l_columns_counter].port], _keypad_obj->keypad_columns_pins[l_columns_counter].pin) );
                        *value = btn_values[l_rows_counter][l_columns_counter];
                        return E_ok ;
                    }
                }
            }
        }
    }
}