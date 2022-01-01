#define __LEDTCPSERVER_C

#include "TCPIPConfig.h"
#include "GetTemp.h" //TO BE ABLE TO USE THE GET TEMP

#if defined(STACK_USE_LED_TCP_SERVER_EXAMPLE)
#include "TCPIP Stack/TCPIP.h"

// Defines which port the server will listen on
//#define SERVER_PORT	5555
//#define SERVER_PORT	9761
#define SERVER_PORT	7779


//float getTemp(void);
/*****************************************************************************
  Function:
	void LEDTCPServer(void)

  Summary:
	Implements a simple LED TCP Server.

  Description:
	This function implements a simple TCP server.  The function is invoked
	periodically by the stack to listen for incoming connections.  When a 
	connection is made, the server reads all incoming data, processes the 
	LEDs.
	
	This example can be used as a model for many TCP server applications.

  Precondition:
	TCP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void LEDTCPServer(void)
{
    //**********************Declarations - Modified Nov/13th********************
	static TCP_SOCKET	MySocket;
    BYTE theChar=0; //run without the 0
    static char theCommand[6]; //char array, for the commands 
    static int commandIndex=0;//want to be remembered whenever function is entered
    static enum _TCPServerState
	{
		SM_OPEN_SERVER_SOCKET = 0,
		SM_BUILD_MESSAGE_INCREMENTALLY,
		SM_PROCESS,
		SM_CLOSE_SOCKET
	} TCPServerState = SM_OPEN_SERVER_SOCKET;
    //**********************END of declarations ********************************
    
	switch(TCPServerState)
	{
		case SM_OPEN_SERVER_SOCKET: // Allocate a socket for this server to listen and accept connections on
			MySocket = TCPOpen(0, TCP_OPEN_SERVER, SERVER_PORT, TCP_PURPOSE_LED_SERVER);
            
			if(MySocket == INVALID_SOCKET) return;
            TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
		break;
        
        case SM_BUILD_MESSAGE_INCREMENTALLY: // Build the msg incrementally - modified Nov/12th as per 3.3 submission            
            if(!TCPIsConnected(MySocket)) return; //check connection
            if (TCPIsGetReady(MySocket)==0) return; //check if any data in rFIFO aka any command received yet
            TCPGet(MySocket, &theChar);  //TCPGets socket data and puts it in the char variable 
            if(theChar == (BYTE) 0xFF){
                commandIndex =0;
                TCPServerState = SM_PROCESS;
            }else{
                theCommand[commandIndex] = theChar;
                commandIndex++;
            }
            break;
          
		case SM_PROCESS: // Based off the UML activity diagram L07: SLIDE#16
			if(!TCPIsConnected(MySocket)) return; //check if client is connected 
            else if(strcmp(theCommand,"t")==0){
                TCPPutString(MySocket, (BYTE*)"Server response: Hello user!");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }	
            else if(strcmp(theCommand,"L1on")==0){
                LED1_IO = 1;
                TCPPutString(MySocket, (BYTE*)"LED1 ON");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"L1off")==0){
                LED1_IO = 0;
                TCPPutString(MySocket, (BYTE*)"LED1 OFF");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"L2on")==0){
                LED2_IO = 1;
                TCPPutString(MySocket, (BYTE*)"LED2 ON");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"L2off")==0){
                LED2_IO = 0;
                TCPPutString(MySocket, (BYTE*)"LED2 OFF");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"L3on")==0){
                LED3_IO = 1;
                TCPPutString(MySocket, (BYTE*)"LED3 ON");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"L3off")==0){
                LED3_IO = 0;
                TCPPutString(MySocket, (BYTE*)"LED3 OFF");
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"gpb1")==0){              
                if(BUTTON0_IO == BUTTON_DOWN)
                {
                    TCPPutString(MySocket, (BYTE*)"Button1 is down");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }else{
                    TCPPutString(MySocket, (BYTE*)"Button1 is up");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }
            }
            
            else if(strcmp(theCommand,"gpb2")==0){
                if(BUTTON1_IO == BUTTON_DOWN)
                {
                    TCPPutString(MySocket, (BYTE*)"Button2 is down");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }else{
                    TCPPutString(MySocket, (BYTE*)"Button2 is up");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }
            }
            else if(strcmp(theCommand,"gpb3")==0){
                if(BUTTON2_IO == BUTTON_DOWN)
                {
                    TCPPutString(MySocket, (BYTE*)"Button3 is down");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }else{
                    TCPPutString(MySocket, (BYTE*)"Button3 is up");
                    TCPPut(MySocket, (BYTE)0xFF);
                    TCPFlush(MySocket);
                    TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
                }
            }
            else if(strcmp(theCommand,"temp")==0){
                float temp = getTemp();
                //Converting float to string using sprintf function
                char tempStr[sizeof(temp)];
                sprintf(tempStr, "%0.2f", temp);  //to print everything use %f
                TCPPutString(MySocket, (BYTE*)("Temp is: "));
                TCPPutString(MySocket, (BYTE*)(tempStr)); 
                TCPPutString(MySocket, (BYTE*)(" C"));
                TCPPut(MySocket, (BYTE)0xFF);
                TCPFlush(MySocket);
                TCPServerState = SM_BUILD_MESSAGE_INCREMENTALLY;
            }
            else if(strcmp(theCommand,"d")==0){
                LED1_IO =0;
                LED2_IO =0;
                LED3_IO =0;
                TCPServerState = SM_CLOSE_SOCKET;
                return;
            }
            theCommand[6]= NULL;
            theCommand[5]= NULL;
            theCommand[4]= NULL;
            theCommand[3]= NULL;
            theCommand[2]= NULL;
            theCommand[1]= NULL;
            theCommand[0]= NULL;
            break;

		case SM_CLOSE_SOCKET:
            TCPClose(MySocket);
			TCPServerState = SM_OPEN_SERVER_SOCKET;
            break;
	}
}

#endif //#if defined(STACK_USE_GENERIC_TCP_SERVER_EXAMPLE)
