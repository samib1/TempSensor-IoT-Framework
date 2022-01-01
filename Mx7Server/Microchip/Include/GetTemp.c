/* 
 * File:        GetTemp.c
 * Source:      Prof provided code in TMP2UnitTest
 * Modified by: Sami
 * Version:     Nov/21st/2021
 * Purpose:     To get temp
 * NOTE:        ADDED A GETTEMP.H ALSO AND DEFINED THE GETTEMP FUNCTION IN THERE
 *                  INCLUDED THE GETTEMP.H IN LEDTCPServer.c
 */

#include "GetTemp.h"


//------------ADDED FROM TEMP---------------------------------------------------

BOOL BeginTransfer(BOOL restart) {
    I2C_STATUS status;
    // Send the Start (or Restart) signal
    if (restart) {
        I2CRepeatStart(TMP2_I2C_BUS);
    } else {
        // Wait for the bus to be idle, then start the transfer
        while (!I2CBusIsIdle(TMP2_I2C_BUS));
        if (I2CStart(TMP2_I2C_BUS) != I2C_SUCCESS) {
            return FALSE;
        }
    }

    // Wait for the signal to complete
    do {
        status = I2CGetStatus(TMP2_I2C_BUS);
    } while (!(status & I2C_START));
    return TRUE;
}

BOOL TransmitOneByte(UINT8 data) {
    // Wait for the transmitter to be ready
    while (!I2CTransmitterIsReady(TMP2_I2C_BUS));

    // Transmit the byte
    if (I2CSendByte(TMP2_I2C_BUS, data) == I2C_MASTER_BUS_COLLISION) {
        return FALSE;
    }

    // Wait for the transmission to finish
    while (!I2CTransmissionHasCompleted(TMP2_I2C_BUS));

    return TRUE;
}

void StopTransfer(void) {
    I2C_STATUS status;

    // Send the Stop signal
    I2CStop(TMP2_I2C_BUS);

    // Wait for the signal to complete
    do {
        status = I2CGetStatus(TMP2_I2C_BUS);

    } while (!(status & I2C_STOP));
}

void Acknowledge(BOOL ack) {
    I2CAcknowledgeByte(TMP2_I2C_BUS, ack);
    while (I2CAcknowledgeHasCompleted(TMP2_I2C_BUS) == FALSE);
}

float getTemp(void){
    float temp;
    UINT32 actualClock;
    //created own data structure which will be used to hold the temp
    typedef union { 
        struct {
            char LB;
            char HB;
        } bytes;
        short int _16bitValue;
    } TMP2;
    TMP2 myTemp;
    // Set the I2C baudrate
    actualClock = I2CSetFrequency(TMP2_I2C_BUS, GetPeripheralClock(), I2C_CLOCK_FREQ);
    if (abs(actualClock - I2C_CLOCK_FREQ) > I2C_CLOCK_FREQ / 10) {
        DBPRINTF("Error: TMP2_I2C_BUS clock frequency (%u) error exceeds 10%%.\n", (unsigned) actualClock);
    }
    // Enable the I2C bus
    I2CEnable(TMP2_I2C_BUS, TRUE);
    /*L27: 
     * S - Start/Repeated start (I2CStart function, I2CRepeatStart function
     * P - Stop (I2CStop fnc)   
     * N - NAK & A-ACK: (I2CAcknowledgeByte fnc) (I2CByteWasAckFnc)
     * R- Read bit (1), W - Write bit (0):  (I2CSendByte Fnc) (I2CGetByte fnc)
     * READING 1 BYTE: S|CONTROL(W) > A > R_ADDRESS >A > S|CONTROL(R) >A|DATA > N|P*/
    //1. start
    while (BeginTransfer(USING_START_METHOD) == FALSE); //Keep on trying to set the start condition. Master est a start bit
    
    //2. Control (W)
    TransmitOneByte(TMP2_ADDR_WRITE); //device address with WRITE MODE 
    while (I2CByteWasAcknowledged(TMP2_I2C_BUS) == FALSE); //3. ACK
    
    //3. RAddress
    TransmitOneByte(TEMP_REG_MSB); //select configuration register 
    while (I2CByteWasAcknowledged(TMP2_I2C_BUS) == FALSE);  //4. ACK
    
    //5. Start
    while (BeginTransfer(USING_RESTART_METHOD) == FALSE); //Keep on trying to set the restart condition
    
    //6. Control (R)
    TransmitOneByte(TMP2_ADDR_READ); //device address with READ MODE 
    
    //7. DATA
    while (I2CReceiverEnable(TMP2_I2C_BUS, TRUE) == I2C_RECEIVE_OVERFLOW); 
    while (!I2CReceivedDataIsAvailable(TMP2_I2C_BUS)); //WHEN NOTHING ELSE TO RECIEVE
    Acknowledge(ACK); // ACK
    myTemp.bytes.HB = I2CGetByte(TMP2_I2C_BUS);
    
    //8. Data
    while (I2CReceiverEnable(TMP2_I2C_BUS, TRUE) == I2C_RECEIVE_OVERFLOW);
    while (!I2CReceivedDataIsAvailable(TMP2_I2C_BUS));
    Acknowledge(NACK);  // NACK
    myTemp.bytes.LB = I2CGetByte(TMP2_I2C_BUS);
    temp = (float) myTemp._16bitValue*TMP2_RESOLUTION;
    
    //9. Stop
    StopTransfer();
    return temp;
}
