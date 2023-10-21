/*
 * File:   mcal_interupt_manage.c
 * Author: T-BOX
 *
 * Created on September 10, 2023, 4:13 AM
 */

#include "../mcal_layer/interupt/mcal_interupt_manage.h"

static volatile uint8 RB4_Flag = 1, RB5_Flag = 1, RB6_Flag = 1, RB7_Flag = 1;

#if INTERRUPT_PRIORITY_LEVELS_ENABLE==INTERRUPT_FEATURE_ENABLE
void __interrupt() InterruptManagerHigh(void){
    if((INTERRUPT_ENABLE == INTCON3bits.INT2IE) && (INTERRUPT_OCCUR == INTCON3bits.INT2IF)){
        INT2_ISR();
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.INT0IE) && (INTERRUPT_OCCUR == INTCONbits.INT0IF)){
        INT0_ISR();
    }
    else{ /* Nothing */ }
}

void __interrupt(low_priority) InterruptManagerLow(void){
    if((INTERRUPT_ENABLE == INTCON3bits.INT1E) && (INTERRUPT_OCCUR == INTCON3bits.INT1F)){
        INT1_ISR();
    }
    else{ /* Nothing */ }
}

#else
void __interrupt() InterruptManager(void){
    /* ============ INTx External On Change Interrupt Start ============ */
    if((INTERRUPT_ENABLE == INTCONbits.INT0IE) && (INTERRUPT_OCCUR == INTCONbits.INT0IF)){
        INT0_ISR(); /* External Interrupt 0 */
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCON3bits.INT1E) && (INTERRUPT_OCCUR == INTCON3bits.INT1F)){
        INT1_ISR(); /* External Interrupt 1 */
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCON3bits.INT2IE) && (INTERRUPT_OCCUR == INTCON3bits.INT2IF)){
        INT2_ISR(); /* External Interrupt 2 */
    }
    else{ /* Nothing */ }

     /* ============ PortB External On Change Interrupt Start ============ */
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB4 == HIGH) && (RB4_Flag == 1)){
        RB4_Flag = 0;
        RB4_ISR(0);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB4 == LOW) && (RB4_Flag == 0)){
        RB4_Flag = 1;
        RB4_ISR(1);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB5 == HIGH) && (RB5_Flag == 1)){
        RB5_Flag = 0;
        RB5_ISR(0);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB5 == LOW) && (RB5_Flag == 0)){
        RB5_Flag = 1;
        RB5_ISR(1);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB6 == HIGH) && (RB6_Flag == 1)){
        RB6_Flag = 0;
        RB6_ISR(0);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB6 == LOW) && (RB6_Flag == 0)){
        RB6_Flag = 1;
        RB6_ISR(1);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB7 == HIGH) && (RB7_Flag == 1)){
        RB7_Flag = 0;
        RB7_ISR(0);
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) &&
       (PORTBbits.RB7 == LOW) && (RB7_Flag == 0)){
        RB7_Flag = 1;
        RB7_ISR(1);
    }
    else{ /* Nothing */ }



     /*ADC interrupt*/
    #if ADC_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
      if((INTERRUPT_ENABLE == PIE1bits.ADIE) && (INTERRUPT_OCCUR == PIR1bits.ADIF)){
      ADC_ISR(); /* External Interrupt 0 */
    }
    else{ /* Nothing */ }
   #endif
 /*Timer0 interrupt*/
     if((INTERRUPT_ENABLE == INTCONbits.TMR0IE) && (INTERRUPT_OCCUR == INTCONbits.TMR0IF)){
        TMR0_ISR();
    }
    else{ /* Nothing */ }
     /*Timer1 interrupt*/
     if((INTERRUPT_ENABLE == PIE1bits.TMR1IE) && (INTERRUPT_OCCUR == PIR1bits.TMR1IF)){
        TMR1_ISR();
    }
    else{ /* Nothing */ }
    /*Timer2 interrupt*/
     if((INTERRUPT_ENABLE == PIE1bits.TMR2IE) && (INTERRUPT_OCCUR == PIR1bits.TMR2IF)){
        TMR2_ISR();
    }
    else{ /* Nothing */ }
    /*Timer3 interrupt*/
    if((INTERRUPT_ENABLE == PIE2bits.TMR3IE) && (INTERRUPT_OCCUR == PIR2bits.TMR3IF)){
        TMR3_ISR();
    }
    else{ /* Nothing */ }
    
    
    
    
    
     /* ============ CCP1 and CCP2 Modules Interrupt Start ============ */
    if((INTERRUPT_ENABLE == PIE1bits.CCP1IE) && (INTERRUPT_OCCUR == PIR1bits.CCP1IF)){
        CCP1_ISR();
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == PIE2bits.CCP2IE) && (INTERRUPT_OCCUR == PIR2bits.CCP2IF)){
        CCP2_ISR();
    }
    else{ /* Nothing */ }
    /* ============ CCP1 and CCP2 Modules Interrupt End   ============ */
    
                    /* EUSART_TX_ interrupt*/
    
     if((INTERRUPT_ENABLE == PIE1bits.TXIE) && (INTERRUPT_OCCUR == PIR1bits.TXIF)){
        EUSART_TX_ISR();
    }
    
    /* EUSART_RX_ interrupt*/
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == PIE1bits.RCIE) && (INTERRUPT_OCCUR == PIR1bits.RCIF)){
        EUSART_RX_ISR();
    }
    else{ /* Nothing */ }
    
    
        /*   MSSP_I2C_interrupt*/
    if((INTERRUPT_ENABLE == PIE1bits.SSPIE) && (INTERRUPT_OCCUR == PIR1bits.SSPIF)){
        MSSP_I2C_ISR();
    }
    else{ /* Nothing */ }
    if((INTERRUPT_ENABLE == PIE2bits.BCLIE) && (INTERRUPT_OCCUR == PIR2bits.BCLIF)){
        MSSP_I2C_BC_ISR();
    }
    else{ /* Nothing */ }
    
    
    
    
    
    
    
}
 


#endif
