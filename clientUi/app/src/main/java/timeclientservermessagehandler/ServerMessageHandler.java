/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 14th, 2021
 * 
 * PURPOSE	To handle all server commands
 * SOURCES	Provided server 
 */
package timeclientservermessagehandler;

import java.io.IOException;

public class ServerMessageHandler implements frameworkservermessageinterface.FrameworkServerMessageInterface {
//    standardiouserinterface.StandardIO myUI;
    frameworkclient.FrameworkClient myClient;

    public ServerMessageHandler(timeclient.TimeClient myClient) {
        this.myClient = myClient;
    }
   
//    int messageCount = 0;
    
    String serverMessage = "";
    @Override
    public void handleServerMessage(String ServerMsg){
        
        if (ServerMsg.charAt(0)!=0xFFFD) { //0xFFFD = UTF-8 encoding of 0xFF
            serverMessage += ServerMsg;
        } else {
            myClient.sendMessageToUI(serverMessage);
            serverMessage = "";
        }
    }
    
    @Override
    public void handleServerMessage(IOException e){
        String theExceptionalEvent = "IOException: " + e.toString() + ". "; //it can be in 1 line. just split for easy read
                theExceptionalEvent += "Stopping thread";
        myClient.sendMessageToUI(theExceptionalEvent);
    }
}

