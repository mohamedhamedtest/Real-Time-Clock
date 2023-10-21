/* 
 * File:   mcal_interupt_gn_con.h
 * Author: T-BOX
 *
 * Created on September 10, 2023, 4:56 AM
 */

#ifndef MCAL_INTERUPT_GN_CON_H
#define	MCAL_INTERUPT_GN_CON_H


#define INTERRUPT_FEATURE_ENABLE 1U
//#define INTERRUPT_PRIORITY_LEVELS_ENABLE            INTERRUPT_FEATURE_ENABLE
#define EXTERNAL_INTERRUPT_INTx_FEATURE_ENABLE      INTERRUPT_FEATURE_ENABLE
#define EXTERNAL_INTERRUPT_OnChange_FEATURE_ENABLE  INTERRUPT_FEATURE_ENABLE


#define ADC_INTERRUPT_FEATURE_ENABLE                INTERRUPT_FEATURE_ENABLE

#define TIMER0_INTERRUPT_FEATURE_ENABLE             INTERRUPT_FEATURE_ENABLE
#define TIMER1_INTERRUPT_FEATURE_ENABLE             INTERRUPT_FEATURE_ENABLE
#define TIMER2_INTERRUPT_FEATURE_ENABLE             INTERRUPT_FEATURE_ENABLE
#define TIMER3_INTERRUPT_FEATURE_ENABLE             INTERRUPT_FEATURE_ENABLE

#define  CCP1_INTERRUPT_FEATURE_ENABLE              INTERRUPT_FEATURE_ENABLE
#define  CCP2_INTERRUPT_FEATURE_ENABLE              INTERRUPT_FEATURE_ENABLE

#define EUSART_TX_INTERRUPT_FEATURE_ENABLE          INTERRUPT_FEATURE_ENABLE
#define EUSART_RX_INTERRUPT_FEATURE_ENABLE          INTERRUPT_FEATURE_ENABLE

#define MSSP_I2C_INTERRUPT_FEATURE_ENABLE           INTERRUPT_FEATURE_ENABLE
//#define MSSP_SPI_INTERRUPT_FEATURE_ENABLE           INTERRUPT_FEATURE_ENABLE



#endif	/* MCAL_INTERUPT_GN_CON_H */
