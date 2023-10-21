/* 
 * File:   mcal_std_types.h
 * Author: T-BOX
 *
 * Created on August 22, 2023, 4:37 PM
 */

#ifndef MCAL_STD_TYPES_H
#define	MCAL_STD_TYPES_H
/* Section : Include */
#include "std_libraries.h"
#include"compiler.h"



/* Section : Macro functions Decleration*/
/* Section : data type  Decleration*/

typedef  unsigned  char  uint8 ;
typedef  unsigned  short uint16 ;
typedef  unsigned  int  uint32 ;
typedef  signed  char  sint8 ;
typedef  signed  short sint16 ;
typedef  signed  int  sint32 ;

typedef   uint8  Std_returntype;



/* Section : Macro Decleration*/
#define Std_High       0x01
#define Std_Low        0x00

#define Std_ON         0x01
#define Std_OFF        0x00


#define ZERO_INIT 0

#define Std_Active     0x01
#define Std_Idle       0x00


#define E_ok              ( Std_returntype)0x01
#define E_Not_ok          ( Std_returntype)0x00




/* Section : function Decleration*/

#endif	/* MCAL_STD_TYPES_H */

