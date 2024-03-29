 /*********************************************************************
 *
 *	Hardware specific definitions for:
 *    - PIC32 Ethernet Starter Kit
 *    - PIC32MX795F512L
 *    - Internal 10/100 Ethernet MAC with National DP83848 10/100 PHY
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    Compiler.h
 * Processor:       PIC32
 * Compiler:        Microchip C32 v1.11 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		09/16/2010	Regenerated for specific boards
 ********************************************************************/
#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

#include "Compiler.h"

// Define a macro describing this hardware set up (used in other files)
#define PIC32_ENET_SK_DM320004

// Set configuration fuses (but only in MainDemo.c where THIS_IS_STACK_APPLICATION is defined)
// KF Start: This was commented out becuase we palced all confgiruation bits settings in one included file ConfigurationBits.h
//#if defined(THIS_IS_STACK_APPLICATION)
//	#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FPBDIV = DIV_1, POSCMOD = XT, FNOSC = PRIPLL, CP = OFF
//	#pragma config FMIIEN = OFF, FETHIO = OFF	// external PHY in RMII/alternate configuration
//#endif
//KF: End


// Clock frequency values
// These directly influence timed events using the Tick module.  They also are used for UART and SPI baud rate generation.
#define GetSystemClock()		(80000000ul)			// Hz
#define GetInstructionClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Might need changing if using Doze modes.
#define GetPeripheralClock()	(GetSystemClock()/1)	// Normally GetSystemClock()/4 for PIC18, GetSystemClock()/2 for PIC24/dsPIC, and GetSystemClock()/1 for PIC32.  Divisor may be different if using a PIC32 since it's configurable.

//------------------------ADDED THESE FROM TMP2--------------------------------
//MIGHT NEED TO ADD THESE
//// Clock Constants
//#if defined (__32MX460F512L__) || defined (__32MX360F512L__) || defined (__32MX795F512L__)
//#define SYS_CLOCK (80000000L)
//#elif defined (__32MX220F032D__) || defined (__32MX250F128D__)
//#define SYS_CLOCK (40000000L)
//#endif
//#define GetSystemClock()            (SYS_CLOCK)
//#define GetPeripheralClock()        (SYS_CLOCK/2)
//#define GetInstructionClock()       (SYS_CLOCK)

#define I2C_CLOCK_FREQ              5000
// EEPROM Constants
#define TMP2_I2C_BUS	            I2C1        //WE ARE USING I2C1 if not working can use I2C2
#define TMP2_ADDRESS                0x4B        // 0b1010000 TMP2 address
#define CONFIG_REG					0x03				// Configuration register address
#define TEMP_REG_MSB				0x00				// MSB temperature register address
#define TMP2_DEV_ID_REG_ADDR		0x0B				// device ID (Register Address 0x0B)
#define TMP2_DEV_ID					0xCB
#define TMP2_ADDR_WRITE				0b10010110
#define TMP2_ADDR_READ 				0b10010111
#define	USING_START_METHOD			FALSE
#define	USING_RESTART_METHOD 		TRUE
#define ACK							TRUE
#define NACK						FALSE
#define TMP2_RESOLUTION				0.0078
//------------------------ADDED THESE FROM TMP2-------------------------------------------------

//KF: start	
// Hardware I/O pin mappings

// LEDs
#define LED0_TRIS			(TRISGbits.TRISG12)	// Ref LED0
#define LED0_IO				(LATGbits.LATG12)

#define LED1_TRIS			(TRISGbits.TRISG13)	// Ref LED1
#define LED1_IO				(LATGbits.LATG13)

#define LED2_TRIS			(TRISGbits.TRISG14)	// Ref LED2
#define LED2_IO				(LATGbits.LATG14)

#define LED3_TRIS			(TRISGbits.TRISG15)	// Ref LED3
#define LED3_IO				(LATGbits.LATG15)

#define LED4_TRIS			(TRISGbits.TRISG15)	// No such LED
#define LED4_IO				(LATGbits.LATG15)

#define LED5_TRIS			(TRISGbits.TRISG15)	// No such LED
#define LED5_IO				(LATGbits.LATG15)

#define LED6_TRIS			(TRISGbits.TRISG15)	// No such LED
#define LED6_IO				(LATGbits.LATG15)

#define LED7_TRIS			(TRISGbits.TRISG15)	// No such LED
#define LED7_IO				(LATGbits.LATG15)

#define LED_GET()			((unsigned char)((LATG>>12) & 0x0F))
#define LED_PUT(a)		(LATG = a<<12)

// Momentary push buttons
#define BUTTON0_TRIS		(TRISGbits.TRISG6)	// Ref SW1
#define BUTTON0_IO			(PORTGbits.RG6)

#define BUTTON1_TRIS		(TRISGbits.TRISG7)	// Ref SW2
#define BUTTON1_IO			(PORTGbits.RG7)

#define BUTTON2_TRIS		(TRISAbits.TRISA0)	// Ref SW3
#define BUTTON2_IO			(PORTAbits.RA0)

#define BUTTON3_TRIS		(TRISDbits.TRISD13)	// No BUTTON3 on this board
#define BUTTON3_IO			(1)
#define BUTTON_DOWN			1u
#define BUTTON_UP				0u
//KF: end

// UART configuration (not too important since we don't have a UART 
// connector attached normally, but needed to compile if the STACK_USE_UART 
// or STACK_USE_UART2TCP_BRIDGE features are enabled.
#define UARTTX_TRIS			(TRISFbits.TRISF3)
#define UARTRX_TRIS			(TRISFbits.TRISF2)

// External National PHY configuration
#define	PHY_RMII				// external PHY runs in RMII mode
// KF: start
//#define	PHY_CONFIG_ALTERNATE	// alternate configuration used
//#define	PHY_ADDRESS			0x1	// the address of the National DP83848 PHY
#define	PHY_ADDRESS			0x0		// the address of the LAN8720 PHY
// KF: End

// Note, it is not possible to use a MRF24WB0M Wi-Fi PICtail Plus 
// card with this starter kit.  The required interrupt signal, among 
// possibly other I/O pins aren't available on the Starter Kit board.


#endif // #ifndef HARDWARE_PROFILE_H
