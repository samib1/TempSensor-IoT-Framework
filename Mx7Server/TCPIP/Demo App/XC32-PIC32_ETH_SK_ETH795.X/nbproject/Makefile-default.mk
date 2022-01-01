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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c "../../../Microchip/TCPIP Stack/Announce.c" "../../../Microchip/TCPIP Stack/ARCFOUR.c" "../../../Microchip/TCPIP Stack/ARP.c" "../../../Microchip/TCPIP Stack/AutoIP.c" "../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../Microchip/TCPIP Stack/BigInt.c" "../../../Microchip/TCPIP Stack/Delay.c" "../../../Microchip/TCPIP Stack/DHCP.c" "../../../Microchip/TCPIP Stack/DHCPs.c" "../../../Microchip/TCPIP Stack/DNS.c" "../../../Microchip/TCPIP Stack/DNSs.c" "../../../Microchip/TCPIP Stack/DynDNS.c" "../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c" "../../../Microchip/TCPIP Stack/ETHPIC32IntMac.c" "../../../Microchip/TCPIP Stack/FileSystem.c" "../../../Microchip/TCPIP Stack/FTP.c" "../../../Microchip/TCPIP Stack/Hashes.c" "../../../Microchip/TCPIP Stack/Helpers.c" "../../../Microchip/TCPIP Stack/HTTP2.c" "../../../Microchip/TCPIP Stack/ICMP.c" "../../../Microchip/TCPIP Stack/IP.c" "../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../Microchip/TCPIP Stack/MPFS2.c" "../../../Microchip/TCPIP Stack/NBNS.c" "../../../Microchip/TCPIP Stack/Random.c" "../../../Microchip/TCPIP Stack/Reboot.c" "../../../Microchip/TCPIP Stack/RSA.c" "../../../Microchip/TCPIP Stack/SMTP.c" "../../../Microchip/TCPIP Stack/SNMP.c" "../../../Microchip/TCPIP Stack/SNMPv3.c" "../../../Microchip/TCPIP Stack/SNMPv3USM.c" "../../../Microchip/TCPIP Stack/SNTP.c" "../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../Microchip/TCPIP Stack/SSL.c" "../../../Microchip/TCPIP Stack/StackTsk.c" "../../../Microchip/TCPIP Stack/TCP.c" "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../Microchip/TCPIP Stack/Telnet.c" "../../../Microchip/TCPIP Stack/TFTPc.c" "../../../Microchip/TCPIP Stack/Tick.c" "../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../Microchip/TCPIP Stack/UART.c" "../../../Microchip/TCPIP Stack/UDP.c" "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../Microchip/TCPIP Stack/ZeroconfHelper.c" "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" ../MPFSImg2.c "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S" "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhySMSC8720.c" ../CustomHTTPApp.c ../CustomSNMPApp.c ../CustomSSLCert.c ../MainDemo.c ../LEDTCPServer.c ../TCPToUpperServer.c ../../../Microchip/Include/GetTemp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/LEDTCPServer.o ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o ${OBJECTDIR}/_ext/857544326/GetTemp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1954962658/Announce.o.d ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d ${OBJECTDIR}/_ext/1954962658/ARP.o.d ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1954962658/BigInt.o.d ${OBJECTDIR}/_ext/1954962658/Delay.o.d ${OBJECTDIR}/_ext/1954962658/DHCP.o.d ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d ${OBJECTDIR}/_ext/1954962658/DNS.o.d ${OBJECTDIR}/_ext/1954962658/DNSs.o.d ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d ${OBJECTDIR}/_ext/1954962658/FTP.o.d ${OBJECTDIR}/_ext/1954962658/Hashes.o.d ${OBJECTDIR}/_ext/1954962658/Helpers.o.d ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d ${OBJECTDIR}/_ext/1954962658/ICMP.o.d ${OBJECTDIR}/_ext/1954962658/IP.o.d ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d ${OBJECTDIR}/_ext/1954962658/NBNS.o.d ${OBJECTDIR}/_ext/1954962658/Random.o.d ${OBJECTDIR}/_ext/1954962658/Reboot.o.d ${OBJECTDIR}/_ext/1954962658/RSA.o.d ${OBJECTDIR}/_ext/1954962658/SMTP.o.d ${OBJECTDIR}/_ext/1954962658/SNMP.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d ${OBJECTDIR}/_ext/1954962658/SNTP.o.d ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d ${OBJECTDIR}/_ext/1954962658/SSL.o.d ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d ${OBJECTDIR}/_ext/1954962658/TCP.o.d ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/Telnet.o.d ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d ${OBJECTDIR}/_ext/1954962658/Tick.o.d ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1954962658/UART.o.d ${OBJECTDIR}/_ext/1954962658/UDP.o.d ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/LEDTCPServer.o.d ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o.d ${OBJECTDIR}/_ext/857544326/GetTemp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1954962658/Announce.o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o ${OBJECTDIR}/_ext/1954962658/ARP.o ${OBJECTDIR}/_ext/1954962658/AutoIP.o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o ${OBJECTDIR}/_ext/1954962658/BigInt.o ${OBJECTDIR}/_ext/1954962658/Delay.o ${OBJECTDIR}/_ext/1954962658/DHCP.o ${OBJECTDIR}/_ext/1954962658/DHCPs.o ${OBJECTDIR}/_ext/1954962658/DNS.o ${OBJECTDIR}/_ext/1954962658/DNSs.o ${OBJECTDIR}/_ext/1954962658/DynDNS.o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/1954962658/FileSystem.o ${OBJECTDIR}/_ext/1954962658/FTP.o ${OBJECTDIR}/_ext/1954962658/Hashes.o ${OBJECTDIR}/_ext/1954962658/Helpers.o ${OBJECTDIR}/_ext/1954962658/HTTP2.o ${OBJECTDIR}/_ext/1954962658/ICMP.o ${OBJECTDIR}/_ext/1954962658/IP.o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o ${OBJECTDIR}/_ext/1954962658/MPFS2.o ${OBJECTDIR}/_ext/1954962658/NBNS.o ${OBJECTDIR}/_ext/1954962658/Random.o ${OBJECTDIR}/_ext/1954962658/Reboot.o ${OBJECTDIR}/_ext/1954962658/RSA.o ${OBJECTDIR}/_ext/1954962658/SMTP.o ${OBJECTDIR}/_ext/1954962658/SNMP.o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o ${OBJECTDIR}/_ext/1954962658/SNTP.o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o ${OBJECTDIR}/_ext/1954962658/SSL.o ${OBJECTDIR}/_ext/1954962658/StackTsk.o ${OBJECTDIR}/_ext/1954962658/TCP.o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/Telnet.o ${OBJECTDIR}/_ext/1954962658/TFTPc.o ${OBJECTDIR}/_ext/1954962658/Tick.o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o ${OBJECTDIR}/_ext/1954962658/UART.o ${OBJECTDIR}/_ext/1954962658/UDP.o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/LEDTCPServer.o ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o ${OBJECTDIR}/_ext/857544326/GetTemp.o

# Source Files
SOURCEFILES=../BerkeleyTCPClientDemo.c ../BerkeleyTCPServerDemo.c ../BerkeleyUDPClientDemo.c ../GenericTCPClient.c ../GenericTCPServer.c ../PingDemo.c ../SMTPDemo.c ../UARTConfig.c ../../../Microchip/TCPIP Stack/Announce.c ../../../Microchip/TCPIP Stack/ARCFOUR.c ../../../Microchip/TCPIP Stack/ARP.c ../../../Microchip/TCPIP Stack/AutoIP.c ../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../Microchip/TCPIP Stack/BigInt.c ../../../Microchip/TCPIP Stack/Delay.c ../../../Microchip/TCPIP Stack/DHCP.c ../../../Microchip/TCPIP Stack/DHCPs.c ../../../Microchip/TCPIP Stack/DNS.c ../../../Microchip/TCPIP Stack/DNSs.c ../../../Microchip/TCPIP Stack/DynDNS.c ../../../Microchip/TCPIP Stack/ENC28J60.c ../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c ../../../Microchip/TCPIP Stack/ETHPIC32IntMac.c ../../../Microchip/TCPIP Stack/FileSystem.c ../../../Microchip/TCPIP Stack/FTP.c ../../../Microchip/TCPIP Stack/Hashes.c ../../../Microchip/TCPIP Stack/Helpers.c ../../../Microchip/TCPIP Stack/HTTP2.c ../../../Microchip/TCPIP Stack/ICMP.c ../../../Microchip/TCPIP Stack/IP.c ../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../Microchip/TCPIP Stack/MPFS2.c ../../../Microchip/TCPIP Stack/NBNS.c ../../../Microchip/TCPIP Stack/Random.c ../../../Microchip/TCPIP Stack/Reboot.c ../../../Microchip/TCPIP Stack/RSA.c ../../../Microchip/TCPIP Stack/SMTP.c ../../../Microchip/TCPIP Stack/SNMP.c ../../../Microchip/TCPIP Stack/SNMPv3.c ../../../Microchip/TCPIP Stack/SNMPv3USM.c ../../../Microchip/TCPIP Stack/SNTP.c ../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../Microchip/TCPIP Stack/SPIFlash.c ../../../Microchip/TCPIP Stack/SPIRAM.c ../../../Microchip/TCPIP Stack/SSL.c ../../../Microchip/TCPIP Stack/StackTsk.c ../../../Microchip/TCPIP Stack/TCP.c ../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../Microchip/TCPIP Stack/Telnet.c ../../../Microchip/TCPIP Stack/TFTPc.c ../../../Microchip/TCPIP Stack/Tick.c ../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../Microchip/TCPIP Stack/UART.c ../../../Microchip/TCPIP Stack/UDP.c ../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../Microchip/TCPIP Stack/ZeroconfHelper.c ../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../MPFSImg2.c ../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S ../../../Microchip/TCPIP Stack/ETHPIC32ExtPhySMSC8720.c ../CustomHTTPApp.c ../CustomSNMPApp.c ../CustomSSLCert.c ../MainDemo.c ../LEDTCPServer.c ../TCPToUpperServer.c ../../../Microchip/Include/GetTemp.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/default/53019d69dc43d527e51d83fa7a79f6e3c506ca5c .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o: ../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  .generated_files/flags/default/49536dd9d4f09135458908e9a8b05de87d5d5030 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -I".." -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o "../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1954962658/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  .generated_files/flags/default/767f401c1917bc378375ddb6edc555c6249debae .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  .generated_files/flags/default/f6ab2860eceac873dfd4cb939631daa85c7826f6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  .generated_files/flags/default/a06148add8f5c4ceb8edf09ef2b83c56c9e0e73e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/default/979200f6cab2b5550900aa91d2d8fa4d60648ae3 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  .generated_files/flags/default/152a030ad753050bd95a2f54d4d72c1bc87d180a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  .generated_files/flags/default/1dc6540d7d2e7cc7899630b97b1fd0f70e527a80 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  .generated_files/flags/default/755743add719d820d72996664dcec0aaac8dd302 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/default/2a47704d9645a8c13fabcf395d3218f2f88033b6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/default/585460110980a0c381efab442c07b742a0deda67 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  .generated_files/flags/default/bbc24f17c3981ccb1929291da91c220bc40a472e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/default/8d0d0c65466d06d4f34743f0d31ef04ade965d14 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/default/e955fadd2b3e998bf9ec9b7cb61dcc848b3f45fb .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/default/f8bd46484cf324d710cabaca8b74a5567e988f2f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  .generated_files/flags/default/bee19d6c9c6684080ad2322c24a08bd68b3e2ddf .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/default/4d2a8213f01ba189c2ccbafcd99bd3a1a26103d4 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  .generated_files/flags/default/b0b248c7c6a08144400b7ccd37bfeab33bdc6127 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  .generated_files/flags/default/1ffb283bfa81b572c79145a713ab9739c5b8b9b5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/default/aa0ba9dc675bdfc94321bb47abcd21465eddb55e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/default/dd6c1ea0c1ae8b645ad55a8b69b5c46cddc1c174 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/default/cd72b53302e15b2bb32057a082886654129c17fd .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/default/9835bc717a3e56539ad9cf312236520597def54b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/default/11fcfc147b3263509d93a960f86175caae7fbc2a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32ExtPhy.c  .generated_files/flags/default/3bce29cccce822b12e9b735e2491fe1c635a6d34 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32IntMac.c  .generated_files/flags/default/d8c81a17058404a2f42c71cd05c940e7f30f4ac0 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o "../../../Microchip/TCPIP Stack/ETHPIC32IntMac.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  .generated_files/flags/default/71b4c9d0bcf00128a8d0d039b0e8f3a1e71bfb6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/default/48c5c2a74d6c645705a29a63c3c55c7bd87a361c .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/default/2c821699df144d5511855648870c709804e41e4b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/default/8de6b70c8824408f908f6286522268b87bf355c6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/default/a84e2e5f1580498be2ec2eb68b82a4e1589d79de .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/default/21b33ff45d973a7faebf9ce260fae7a492b6decb .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/default/7e9919689b70d523c1811fadc42388818df38a07 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/default/629b71a123d3cf635c7985364123b25550b8670d .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/default/9e46de0ebdf177eeaf248c5f80a94e0a1b1e0230 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/default/f396bb86d8f33bb1db7eeebac9a345d3aefb1c63 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  .generated_files/flags/default/16952a34266f45fc4c5746c8c3d7c2bc622310d .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/default/b9fcca3aa6a89284f5a6778d619664bc32e08c15 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  .generated_files/flags/default/3424df1966440bd2ffe6ce404a0fae21f8c0452b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/default/9ffcbd6812347d09f4adcb5f4a7a92cc728fe20 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/default/45d2cded1c8764d6a9f935f9a4e03d01a0b9c6b5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  .generated_files/flags/default/86d7d256c4ed55547ccdfe7e3b61a612c27edcc .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  .generated_files/flags/default/6bbe10ee2e78ffe5a33d54178378d2184c9352d8 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/default/3799db3a8ab4256bb314c52be3bd74d192d22727 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/default/99becf434c26ab8ef7ce3014ac6af9127eee7a7f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/default/41d4cfbb8f0229d03d4cfe0ffd689d39c205d77a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/default/b6a96c710added1cdf052593cdc456cf490d1303 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  .generated_files/flags/default/e5353c745bb4faad26009051b5f3a9021effe6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/default/9e599e614a7adb08404664af85b8ee9ed534d2 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/default/4cf68e4fc26af64a0facc8a97c9ba5d069f2657b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/default/2751f33af349c73e93bb3b81b1c0627065e5ae6d .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/default/5cfdba06025d7812b9940eeedd528251e4aba82a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/default/af1f2d7a15bcf276fffa0757e6bfe4db3e6945c5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/default/ebc75ec17b44830685ad77d3c0f42897fe396a23 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/default/28cf0095df44987c3d4011ae7a6bc2497a522b73 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/default/b465a2ec83c5f4b24fc4b73f80acfd71634128f6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/default/fba291a7f7d52472f290fead6169d7d64d03fcb9 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/default/aa9de4340e0036deeb086263543599d06c124e50 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/default/7e97f5fdc959038dc7fe1db7e94e39649e6c99ad .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/default/9c2f31716afa1257827ee76e9d90cecc2cc3c716 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/default/184f3ad2007193fc315da4f3625f0caf58c76bbc .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/default/37d878eea37fc53e68ff509e5ce645f0e72b8c7c .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.c  .generated_files/flags/default/e8370e1e3220e27f8ba49e34cad56621320cd934 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhySMSC8720.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/default/3a808538069ad4701a5b7dac2f11d4679c32833b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  .generated_files/flags/default/ff3fc4dcd8c8e56099af6aaca9a1cebd54872f61 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  .generated_files/flags/default/ddc8bd06de7d46d015c465e8e687636e5c8a54a5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  .generated_files/flags/default/bdcdea7e86b80b38aa02b240698f13433d0d684a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/LEDTCPServer.o: ../LEDTCPServer.c  .generated_files/flags/default/9062b208ed0b4473ce943e273217e53083581512 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LEDTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LEDTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LEDTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/LEDTCPServer.o ../LEDTCPServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/TCPToUpperServer.o: ../TCPToUpperServer.c  .generated_files/flags/default/b3eb8477a3dbddd26c2ce66b44ba25841edd97b1 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/TCPToUpperServer.o.d" -o ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o ../TCPToUpperServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/857544326/GetTemp.o: ../../../Microchip/Include/GetTemp.c  .generated_files/flags/default/9484625532053dd885713e7999ee0791516c6df5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/857544326" 
	@${RM} ${OBJECTDIR}/_ext/857544326/GetTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/857544326/GetTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/857544326/GetTemp.o.d" -o ${OBJECTDIR}/_ext/857544326/GetTemp.o ../../../Microchip/Include/GetTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  .generated_files/flags/default/e4d12462c019b97a50b757a8eec3cd72116996ca .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  .generated_files/flags/default/2a50f547a20075ef08c11b9b86973af1fcdb4581 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  .generated_files/flags/default/78caa68a5f687cf6509d5fe0bb6a43769f349a00 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  .generated_files/flags/default/69d7a04541338158b50c93ebe469c907acf89142 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  .generated_files/flags/default/1e6c65f8b4336523d751057074ecf741bf568af .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  .generated_files/flags/default/235537c70682821724093ec552d876f1805b0001 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  .generated_files/flags/default/49a6268142487be647fcc9431c3e3c6bec34160 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  .generated_files/flags/default/82e9d106a8bc114813c12a75574340a5a79f98f5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Announce.o: ../../../Microchip/TCPIP\ Stack/Announce.c  .generated_files/flags/default/3bdccf3e3b680f2df6bfdf67511f3cca1ed388e9 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Announce.o.d" -o ${OBJECTDIR}/_ext/1954962658/Announce.o "../../../Microchip/TCPIP Stack/Announce.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ARCFOUR.o: ../../../Microchip/TCPIP\ Stack/ARCFOUR.c  .generated_files/flags/default/a8daf0d59b5fd687d727b24206cd8d5b671fc30e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARCFOUR.o "../../../Microchip/TCPIP Stack/ARCFOUR.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ARP.o: ../../../Microchip/TCPIP\ Stack/ARP.c  .generated_files/flags/default/417f256336f152eb7d6b84a7a444a71377f6eed7 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ARP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ARP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ARP.o "../../../Microchip/TCPIP Stack/ARP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/AutoIP.o: ../../../Microchip/TCPIP\ Stack/AutoIP.c  .generated_files/flags/default/a85188d6a3fe87efbd7b7cb260009275a3cf61c2 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/AutoIP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1954962658/AutoIP.o "../../../Microchip/TCPIP Stack/AutoIP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o: ../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  .generated_files/flags/default/6c641c585b093bcbdf0841a45673beda7459b0a7 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1954962658/BerkeleyAPI.o "../../../Microchip/TCPIP Stack/BerkeleyAPI.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/BigInt.o: ../../../Microchip/TCPIP\ Stack/BigInt.c  .generated_files/flags/default/7a8ce7565f66fa236ffc809889612869abb5febe .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/BigInt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/BigInt.o.d" -o ${OBJECTDIR}/_ext/1954962658/BigInt.o "../../../Microchip/TCPIP Stack/BigInt.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Delay.o: ../../../Microchip/TCPIP\ Stack/Delay.c  .generated_files/flags/default/dd684ea060d4f5e6b1f0ec5157eb4d167166bd40 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Delay.o.d" -o ${OBJECTDIR}/_ext/1954962658/Delay.o "../../../Microchip/TCPIP Stack/Delay.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DHCP.o: ../../../Microchip/TCPIP\ Stack/DHCP.c  .generated_files/flags/default/cbb32ead21c14aa1df4a896ba531d2ffd7b1177e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCP.o "../../../Microchip/TCPIP Stack/DHCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DHCPs.o: ../../../Microchip/TCPIP\ Stack/DHCPs.c  .generated_files/flags/default/4da6c55b90089901885cc64648ad157681647f4b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DHCPs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DHCPs.o "../../../Microchip/TCPIP Stack/DHCPs.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DNS.o: ../../../Microchip/TCPIP\ Stack/DNS.c  .generated_files/flags/default/d90165f2944687d2b63a2feeaf90736c176dfdf8 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNS.o "../../../Microchip/TCPIP Stack/DNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DNSs.o: ../../../Microchip/TCPIP\ Stack/DNSs.c  .generated_files/flags/default/91a2c3f399259576913091b0c79d5c5e09c695d0 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DNSs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DNSs.o.d" -o ${OBJECTDIR}/_ext/1954962658/DNSs.o "../../../Microchip/TCPIP Stack/DNSs.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/DynDNS.o: ../../../Microchip/TCPIP\ Stack/DynDNS.c  .generated_files/flags/default/b164fcf396b0b0327ed53a7ed16924502a9782f6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/DynDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/DynDNS.o "../../../Microchip/TCPIP Stack/DynDNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ENC28J60.o: ../../../Microchip/TCPIP\ Stack/ENC28J60.c  .generated_files/flags/default/4296066923f5f6260897ff5bb696981706707a9a .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENC28J60.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENC28J60.o "../../../Microchip/TCPIP Stack/ENC28J60.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ENCX24J600.o: ../../../Microchip/TCPIP\ Stack/ENCX24J600.c  .generated_files/flags/default/7bbe0efb6fa600d3306127b8f8d7a2d5f5a85f61 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1954962658/ENCX24J600.o "../../../Microchip/TCPIP Stack/ENCX24J600.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32ExtPhy.c  .generated_files/flags/default/f454257225f672c6118c1f65365729c68556c282 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhy.o "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32IntMac.c  .generated_files/flags/default/1f1a2b10f86196803d74c39cc559feea29d43c44 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32IntMac.o "../../../Microchip/TCPIP Stack/ETHPIC32IntMac.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/FileSystem.o: ../../../Microchip/TCPIP\ Stack/FileSystem.c  .generated_files/flags/default/39cc7138185fdb0a81e6b53b1e7099a3a21b5ea9 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FileSystem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1954962658/FileSystem.o "../../../Microchip/TCPIP Stack/FileSystem.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/FTP.o: ../../../Microchip/TCPIP\ Stack/FTP.c  .generated_files/flags/default/cfd3239a93c14ea3fd9cfaefe9416e53da3d9e30 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/FTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/FTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/FTP.o "../../../Microchip/TCPIP Stack/FTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Hashes.o: ../../../Microchip/TCPIP\ Stack/Hashes.c  .generated_files/flags/default/92aa8dad7d72855a93433fe488088cd9b7e88895 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Hashes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Hashes.o.d" -o ${OBJECTDIR}/_ext/1954962658/Hashes.o "../../../Microchip/TCPIP Stack/Hashes.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Helpers.o: ../../../Microchip/TCPIP\ Stack/Helpers.c  .generated_files/flags/default/1043c0523235c9024293135d3cd4550bf476543e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Helpers.o.d" -o ${OBJECTDIR}/_ext/1954962658/Helpers.o "../../../Microchip/TCPIP Stack/Helpers.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/HTTP2.o: ../../../Microchip/TCPIP\ Stack/HTTP2.c  .generated_files/flags/default/9e1146e89ef09b6b6d29cc7bdffb3ba38c121ecf .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/HTTP2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1954962658/HTTP2.o "../../../Microchip/TCPIP Stack/HTTP2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ICMP.o: ../../../Microchip/TCPIP\ Stack/ICMP.c  .generated_files/flags/default/8f6d9a95c9c106274f55defb2b1e598e498afa7c .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ICMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ICMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/ICMP.o "../../../Microchip/TCPIP Stack/ICMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/IP.o: ../../../Microchip/TCPIP\ Stack/IP.c  .generated_files/flags/default/99f89e0ffa2be8f46fc896a292bf418013080455 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/IP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/IP.o.d" -o ${OBJECTDIR}/_ext/1954962658/IP.o "../../../Microchip/TCPIP Stack/IP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/LCDBlocking.o: ../../../Microchip/TCPIP\ Stack/LCDBlocking.c  .generated_files/flags/default/6346c2315ab3ce9107565cf13c3fd1ce4eaa6b67 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1954962658/LCDBlocking.o "../../../Microchip/TCPIP Stack/LCDBlocking.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/MPFS2.o: ../../../Microchip/TCPIP\ Stack/MPFS2.c  .generated_files/flags/default/b0937444cd83374b67f2f08c56360a5b2fca124e .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/MPFS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1954962658/MPFS2.o "../../../Microchip/TCPIP Stack/MPFS2.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/NBNS.o: ../../../Microchip/TCPIP\ Stack/NBNS.c  .generated_files/flags/default/51dbd7f7d73e0df24493d70baa0059231cfc02e5 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/NBNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/NBNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/NBNS.o "../../../Microchip/TCPIP Stack/NBNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Random.o: ../../../Microchip/TCPIP\ Stack/Random.c  .generated_files/flags/default/c9c8895a57db3d9dd7ac398ab23f16052a7f093d .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Random.o.d" -o ${OBJECTDIR}/_ext/1954962658/Random.o "../../../Microchip/TCPIP Stack/Random.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Reboot.o: ../../../Microchip/TCPIP\ Stack/Reboot.c  .generated_files/flags/default/98df317f4202fd19b051e0041fc3697ccfceabb .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Reboot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Reboot.o.d" -o ${OBJECTDIR}/_ext/1954962658/Reboot.o "../../../Microchip/TCPIP Stack/Reboot.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/RSA.o: ../../../Microchip/TCPIP\ Stack/RSA.c  .generated_files/flags/default/f3c1747ab4d5bc6148b496b98ab65c321f2b0493 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/RSA.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/RSA.o.d" -o ${OBJECTDIR}/_ext/1954962658/RSA.o "../../../Microchip/TCPIP Stack/RSA.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SMTP.o: ../../../Microchip/TCPIP\ Stack/SMTP.c  .generated_files/flags/default/f6bd84de58ca24b8526b82c4230152395238b9b8 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SMTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SMTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SMTP.o "../../../Microchip/TCPIP Stack/SMTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMP.o: ../../../Microchip/TCPIP\ Stack/SNMP.c  .generated_files/flags/default/e282a1f3c13e29147f0e875a988b1a2793aa70e4 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMP.o "../../../Microchip/TCPIP Stack/SNMP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3.o: ../../../Microchip/TCPIP\ Stack/SNMPv3.c  .generated_files/flags/default/6d5c420bd90667226a7f531623d26afdfa25d905 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3.o "../../../Microchip/TCPIP Stack/SNMPv3.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o: ../../../Microchip/TCPIP\ Stack/SNMPv3USM.c  .generated_files/flags/default/e93d3a8d6fd176871db78d1a414c244dbcc671a8 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNMPv3USM.o "../../../Microchip/TCPIP Stack/SNMPv3USM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SNTP.o: ../../../Microchip/TCPIP\ Stack/SNTP.c  .generated_files/flags/default/e9c3e579986ec7ffbc1299dd2225ba2b4fd49c02 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SNTP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SNTP.o.d" -o ${OBJECTDIR}/_ext/1954962658/SNTP.o "../../../Microchip/TCPIP Stack/SNTP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o: ../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  .generated_files/flags/default/a0991ccd115f43054ba73e27fa9c89cae7d9d00b .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIEEPROM.o "../../../Microchip/TCPIP Stack/SPIEEPROM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIFlash.o: ../../../Microchip/TCPIP\ Stack/SPIFlash.c  .generated_files/flags/default/26d1c2f598e13bb7f6e449b81e84437bc79f3f72 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIFlash.o "../../../Microchip/TCPIP Stack/SPIFlash.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SPIRAM.o: ../../../Microchip/TCPIP\ Stack/SPIRAM.c  .generated_files/flags/default/1d52219000ce354296a8787665c186a689990a52 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SPIRAM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1954962658/SPIRAM.o "../../../Microchip/TCPIP Stack/SPIRAM.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/SSL.o: ../../../Microchip/TCPIP\ Stack/SSL.c  .generated_files/flags/default/7e8adad4295603e0528aba0bef03b01fc61b84be .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/SSL.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/SSL.o.d" -o ${OBJECTDIR}/_ext/1954962658/SSL.o "../../../Microchip/TCPIP Stack/SSL.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/StackTsk.o: ../../../Microchip/TCPIP\ Stack/StackTsk.c  .generated_files/flags/default/5985c01b6fbdb5de71f3cbf355c51a82d9363c29 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/StackTsk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1954962658/StackTsk.o "../../../Microchip/TCPIP Stack/StackTsk.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TCP.o: ../../../Microchip/TCPIP\ Stack/TCP.c  .generated_files/flags/default/b8828d123444f5bc7a787648624ebb628068723 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCP.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCP.o "../../../Microchip/TCPIP Stack/TCP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  .generated_files/flags/default/ba6ac17a6e7667a9d099c0aa64b92905d2b6782f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/TCPPerformanceTest.o "../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Telnet.o: ../../../Microchip/TCPIP\ Stack/Telnet.c  .generated_files/flags/default/c04590d65795f2177d22ac6ede11f26e68c98b80 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Telnet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Telnet.o.d" -o ${OBJECTDIR}/_ext/1954962658/Telnet.o "../../../Microchip/TCPIP Stack/Telnet.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/TFTPc.o: ../../../Microchip/TCPIP\ Stack/TFTPc.c  .generated_files/flags/default/5118f4fe3bb929d943be39e68af75b6a349bddb8 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/TFTPc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1954962658/TFTPc.o "../../../Microchip/TCPIP Stack/TFTPc.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/Tick.o: ../../../Microchip/TCPIP\ Stack/Tick.c  .generated_files/flags/default/8a6fb77f89a54701f43b0508efda496553528ce6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/Tick.o.d" -o ${OBJECTDIR}/_ext/1954962658/Tick.o "../../../Microchip/TCPIP Stack/Tick.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o: ../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  .generated_files/flags/default/d38136f35a90791d434c008f5db9f20920c2dbf9 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART2TCPBridge.o "../../../Microchip/TCPIP Stack/UART2TCPBridge.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UART.o: ../../../Microchip/TCPIP\ Stack/UART.c  .generated_files/flags/default/69c3ec20124e52197d975e44aaf1da078be297ba .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UART.o.d" -o ${OBJECTDIR}/_ext/1954962658/UART.o "../../../Microchip/TCPIP Stack/UART.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UDP.o: ../../../Microchip/TCPIP\ Stack/UDP.c  .generated_files/flags/default/b61c24a12915ae73d095c77920711aa2c0ad69cf .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDP.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDP.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDP.o "../../../Microchip/TCPIP Stack/UDP.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o: ../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  .generated_files/flags/default/aac65acc915caafdb28a7db71434b7f6802586bb .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1954962658/UDPPerformanceTest.o "../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o: ../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  .generated_files/flags/default/5b1d64e4ca212fd890b872e016dd4656725449bd .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfHelper.o "../../../Microchip/TCPIP Stack/ZeroconfHelper.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o: ../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  .generated_files/flags/default/fe6e261ad59c7be6b80525a75504f75cbdc78e6f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfLinkLocal.o "../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o: ../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  .generated_files/flags/default/d15f1842b4054e0ee31c70ef792196f71ff6c058 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1954962658/ZeroconfMulticastDNS.o "../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  .generated_files/flags/default/e250981e89c89b203f6626033c5a3f2a44564f0f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o: ../../../Microchip/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.c  .generated_files/flags/default/8ef2ac55c7e82d1b5c0566c339e4e87645d05fe6 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1954962658" 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o.d" -o ${OBJECTDIR}/_ext/1954962658/ETHPIC32ExtPhySMSC8720.o "../../../Microchip/TCPIP Stack/ETHPIC32ExtPhySMSC8720.c"    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  .generated_files/flags/default/fe8dc258d0a625625583757d78aaaeded3d4b792 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  .generated_files/flags/default/5944dd17b24ab387e0364d779d46a4ea97e855fc .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  .generated_files/flags/default/cc4a2553b88b13ba78c3801557bb23a1ce1fab2f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  .generated_files/flags/default/8d523660db5d98b783dc0532bc3dc392287758c7 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/LEDTCPServer.o: ../LEDTCPServer.c  .generated_files/flags/default/67a0182319b039caa82fa3c96357d780639368ee .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LEDTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LEDTCPServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/LEDTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/LEDTCPServer.o ../LEDTCPServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1472/TCPToUpperServer.o: ../TCPToUpperServer.c  .generated_files/flags/default/8bb6127b8198f63889a0bbf10def149d63bc8e00 .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1472/TCPToUpperServer.o.d" -o ${OBJECTDIR}/_ext/1472/TCPToUpperServer.o ../TCPToUpperServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/857544326/GetTemp.o: ../../../Microchip/Include/GetTemp.c  .generated_files/flags/default/847aacb58c551110b736eb2e4d726b86c850d68f .generated_files/flags/default/492bc9a48370f03793ed6e0d57aefde57b4b3af
	@${MKDIR} "${OBJECTDIR}/_ext/857544326" 
	@${RM} ${OBJECTDIR}/_ext/857544326/GetTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/857544326/GetTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_ETH_SK_ETH795 -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../Microchip/Include" -I"../../../Microchip/Include" -I"../../../Microchip/Include/TCPIP Stack" -I"../Configs" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/857544326/GetTemp.o.d" -o ${OBJECTDIR}/_ext/857544326/GetTemp.o ../../../Microchip/Include/GetTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"..",-Map="${DISTDIR}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"..",-Map="${DISTDIR}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/XC32-PIC32_ETH_SK_ETH795.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
