/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 14th, 2021
 * PURPOSE	To handle all server commands
 * SOURCES	Provided server 
 *
 * Modified     December 6th, 2021
 * Modification Add client connection so as to send messages to the Android app
 */
package proxyclientservermessagehandler;

import java.io.IOException;

public class ServerMessageHandler {
    proxyclient.Client myClient;
    timeserveruserinterface.TimeServerUserInterface myUI;
    frameworkclientconnection.FrameworkClientConnection myCC;

//    public ServerMessageHandler(proxyclient.Client myClient) {
//        this.myClient = myClient;
//    }
    public ServerMessageHandler(proxyclient.Client myClient, 
            frameworkclientconnection.FrameworkClientConnection myCC,
            timeserveruserinterface.TimeServerUserInterface myUI) {
        this.myClient = myClient;
        this.myUI = myUI;
        this.myCC = myCC;
    }

    String serverMessage = "";
    public void handleServerMessage(String ServerMsg){
        if (ServerMsg.charAt(0)!=0xFFFD) { //0xFFFD = UTF-8 encoding of 0xFF
            serverMessage += ServerMsg;
        } else {
//            myClient.sendMessageToUI(serverMessage);
            handlerServerMsg(serverMessage);
            serverMessage = "";
        }
    }
    
    public void handleServerMessage(IOException e){
        String theExceptionalEvent = "IOException: " + e.toString() + ". "; //it can be in 1 line. just split for easy read
                theExceptionalEvent += "Stopping thread";
        myClient.sendMessageToUI(theExceptionalEvent);
    }

    private void handlerServerMsg(String serverMessage) {
        myClient.sendMessageToUI("Testing ...");
        if(serverMessage.equals("LED1 ON")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("LED1 OFF")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("LED2 ON")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("LED2 OFF")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("LED3 ON")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("LED3 OFF")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button1 is down")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button1 is up")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button2 is down")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button2 is up")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button3 is down")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.equals("Button3 is up")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
        else if(serverMessage.contains("Temp is: ")){
            myClient.sendMessageToUI(serverMessage);
            myCC.sendStringMessageToClient(serverMessage);
            myCC.sendMessageToClient((byte) 0xFF);
        }
    }
}

