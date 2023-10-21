#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcal_layer/ecu_7seg.c mcal_layer/ecu_button.c "mcal_layer/ecu_DC mottor.c" mcal_layer/ecu_lcd.c mcal_layer/ecu_keypad.c mcal_layer/ecu_led.c mcal_layer/ecu_relay.c EEPROM/hal_eeprom.c mcal_layer/ADC/hal_adc.c mcal_layer/CCP/hal_ccp.c mcal_layer/GPIO/hal_gpio.c mcal_layer/I2c/hal_i2c.c interupt/mcal_interupt_manage.c interupt/mcal_internal_interupt.c interupt/mcal_external_interupt.c mcal_layer/Timer0/hal_timr0.c mcal_layer/Timer1/hal_timer1.c mcal_layer/Timer2/hal_timr2.c mcal_layer/Timer3/hal_timr3.c mcal_layer/usart/hal_usart.c mcal_layer/device_config.c application.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcal_layer/ecu_7seg.p1 ${OBJECTDIR}/mcal_layer/ecu_button.p1 "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1" ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 ${OBJECTDIR}/mcal_layer/ecu_led.p1 ${OBJECTDIR}/mcal_layer/ecu_relay.p1 ${OBJECTDIR}/EEPROM/hal_eeprom.p1 ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 ${OBJECTDIR}/interupt/mcal_external_interupt.p1 ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 ${OBJECTDIR}/mcal_layer/device_config.p1 ${OBJECTDIR}/application.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d ${OBJECTDIR}/mcal_layer/ecu_button.p1.d "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1.d" ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d ${OBJECTDIR}/mcal_layer/ecu_led.p1.d ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d ${OBJECTDIR}/mcal_layer/device_config.p1.d ${OBJECTDIR}/application.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcal_layer/ecu_7seg.p1 ${OBJECTDIR}/mcal_layer/ecu_button.p1 ${OBJECTDIR}/mcal_layer/ecu_DC\ mottor.p1 ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 ${OBJECTDIR}/mcal_layer/ecu_led.p1 ${OBJECTDIR}/mcal_layer/ecu_relay.p1 ${OBJECTDIR}/EEPROM/hal_eeprom.p1 ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 ${OBJECTDIR}/interupt/mcal_external_interupt.p1 ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 ${OBJECTDIR}/mcal_layer/device_config.p1 ${OBJECTDIR}/application.p1

# Source Files
SOURCEFILES=mcal_layer/ecu_7seg.c mcal_layer/ecu_button.c mcal_layer/ecu_DC mottor.c mcal_layer/ecu_lcd.c mcal_layer/ecu_keypad.c mcal_layer/ecu_led.c mcal_layer/ecu_relay.c EEPROM/hal_eeprom.c mcal_layer/ADC/hal_adc.c mcal_layer/CCP/hal_ccp.c mcal_layer/GPIO/hal_gpio.c mcal_layer/I2c/hal_i2c.c interupt/mcal_interupt_manage.c interupt/mcal_internal_interupt.c interupt/mcal_external_interupt.c mcal_layer/Timer0/hal_timr0.c mcal_layer/Timer1/hal_timer1.c mcal_layer/Timer2/hal_timr2.c mcal_layer/Timer3/hal_timr3.c mcal_layer/usart/hal_usart.c mcal_layer/device_config.c application.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcal_layer/ecu_7seg.p1: mcal_layer/ecu_7seg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_7seg.p1 mcal_layer/ecu_7seg.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_7seg.d ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_button.p1: mcal_layer/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_button.p1 mcal_layer/ecu_button.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_button.d ${OBJECTDIR}/mcal_layer/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_DC\ mottor.p1: mcal_layer/ecu_DC\ mottor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d 
	@${RM} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1" "mcal_layer/ecu_DC mottor.c" 
	@-${MV} "${OBJECTDIR}/mcal_layer/ecu_DC mottor".d "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_lcd.p1: mcal_layer/ecu_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 mcal_layer/ecu_lcd.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_lcd.d ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_keypad.p1: mcal_layer/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 mcal_layer/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_keypad.d ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_led.p1: mcal_layer/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_led.p1 mcal_layer/ecu_led.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_led.d ${OBJECTDIR}/mcal_layer/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_relay.p1: mcal_layer/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_relay.p1 mcal_layer/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_relay.d ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EEPROM/hal_eeprom.p1: EEPROM/hal_eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/EEPROM" 
	@${RM} ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/EEPROM/hal_eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/EEPROM/hal_eeprom.p1 EEPROM/hal_eeprom.c 
	@-${MV} ${OBJECTDIR}/EEPROM/hal_eeprom.d ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1: mcal_layer/ADC/hal_adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/ADC" 
	@${RM} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 mcal_layer/ADC/hal_adc.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.d ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1: mcal_layer/CCP/hal_ccp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/CCP" 
	@${RM} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 mcal_layer/CCP/hal_ccp.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.d ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1: mcal_layer/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/GPIO" 
	@${RM} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 mcal_layer/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.d ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1: mcal_layer/I2c/hal_i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/I2c" 
	@${RM} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 mcal_layer/I2c/hal_i2c.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.d ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_interupt_manage.p1: interupt/mcal_interupt_manage.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 interupt/mcal_interupt_manage.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_interupt_manage.d ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_internal_interupt.p1: interupt/mcal_internal_interupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 interupt/mcal_internal_interupt.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_internal_interupt.d ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_external_interupt.p1: interupt/mcal_external_interupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_external_interupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_external_interupt.p1 interupt/mcal_external_interupt.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_external_interupt.d ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1: mcal_layer/Timer0/hal_timr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer0" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 mcal_layer/Timer0/hal_timr0.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.d ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1: mcal_layer/Timer1/hal_timer1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer1" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 mcal_layer/Timer1/hal_timer1.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.d ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1: mcal_layer/Timer2/hal_timr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer2" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 mcal_layer/Timer2/hal_timr2.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.d ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1: mcal_layer/Timer3/hal_timr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer3" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 mcal_layer/Timer3/hal_timr3.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.d ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/usart/hal_usart.p1: mcal_layer/usart/hal_usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/usart" 
	@${RM} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 mcal_layer/usart/hal_usart.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/usart/hal_usart.d ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/device_config.p1: mcal_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/device_config.p1 mcal_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/device_config.d ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcal_layer/ecu_7seg.p1: mcal_layer/ecu_7seg.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_7seg.p1 mcal_layer/ecu_7seg.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_7seg.d ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_7seg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_button.p1: mcal_layer/ecu_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_button.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_button.p1 mcal_layer/ecu_button.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_button.d ${OBJECTDIR}/mcal_layer/ecu_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_DC\ mottor.p1: mcal_layer/ecu_DC\ mottor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d 
	@${RM} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1" "mcal_layer/ecu_DC mottor.c" 
	@-${MV} "${OBJECTDIR}/mcal_layer/ecu_DC mottor".d "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/mcal_layer/ecu_DC mottor.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_lcd.p1: mcal_layer/ecu_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_lcd.p1 mcal_layer/ecu_lcd.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_lcd.d ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_keypad.p1: mcal_layer/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_keypad.p1 mcal_layer/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_keypad.d ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_led.p1: mcal_layer/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_led.p1 mcal_layer/ecu_led.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_led.d ${OBJECTDIR}/mcal_layer/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ecu_relay.p1: mcal_layer/ecu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ecu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ecu_relay.p1 mcal_layer/ecu_relay.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ecu_relay.d ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ecu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EEPROM/hal_eeprom.p1: EEPROM/hal_eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/EEPROM" 
	@${RM} ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d 
	@${RM} ${OBJECTDIR}/EEPROM/hal_eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/EEPROM/hal_eeprom.p1 EEPROM/hal_eeprom.c 
	@-${MV} ${OBJECTDIR}/EEPROM/hal_eeprom.d ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EEPROM/hal_eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1: mcal_layer/ADC/hal_adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/ADC" 
	@${RM} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1 mcal_layer/ADC/hal_adc.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.d ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/ADC/hal_adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1: mcal_layer/CCP/hal_ccp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/CCP" 
	@${RM} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1 mcal_layer/CCP/hal_ccp.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.d ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/CCP/hal_ccp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1: mcal_layer/GPIO/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/GPIO" 
	@${RM} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1 mcal_layer/GPIO/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.d ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/GPIO/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1: mcal_layer/I2c/hal_i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/I2c" 
	@${RM} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1 mcal_layer/I2c/hal_i2c.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.d ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/I2c/hal_i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_interupt_manage.p1: interupt/mcal_interupt_manage.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_interupt_manage.p1 interupt/mcal_interupt_manage.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_interupt_manage.d ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_interupt_manage.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_internal_interupt.p1: interupt/mcal_internal_interupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_internal_interupt.p1 interupt/mcal_internal_interupt.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_internal_interupt.d ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_internal_interupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interupt/mcal_external_interupt.p1: interupt/mcal_external_interupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/interupt" 
	@${RM} ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d 
	@${RM} ${OBJECTDIR}/interupt/mcal_external_interupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/interupt/mcal_external_interupt.p1 interupt/mcal_external_interupt.c 
	@-${MV} ${OBJECTDIR}/interupt/mcal_external_interupt.d ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interupt/mcal_external_interupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1: mcal_layer/Timer0/hal_timr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer0" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1 mcal_layer/Timer0/hal_timr0.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.d ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer0/hal_timr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1: mcal_layer/Timer1/hal_timer1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer1" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1 mcal_layer/Timer1/hal_timer1.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.d ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer1/hal_timer1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1: mcal_layer/Timer2/hal_timr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer2" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1 mcal_layer/Timer2/hal_timr2.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.d ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer2/hal_timr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1: mcal_layer/Timer3/hal_timr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/Timer3" 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1 mcal_layer/Timer3/hal_timr3.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.d ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/Timer3/hal_timr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/usart/hal_usart.p1: mcal_layer/usart/hal_usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/usart" 
	@${RM} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1 mcal_layer/usart/hal_usart.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/usart/hal_usart.d ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/usart/hal_usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/device_config.p1: mcal_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/device_config.p1 mcal_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/device_config.d ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/project.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/project.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/project.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
