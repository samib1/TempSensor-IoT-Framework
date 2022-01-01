/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.

 * Modified by: Byaruhanga Asiimwe Sami
 * Modified     December 6th, 2021
 * Modification Add usercommand handler for client 
                Set client connection so as to send messages to the Android app
 */
package timeserverclientmessagehandler;

import frameworkclientconnection.FrameworkClientConnection;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ferens
 */
public class ClientMessageHandler implements frameworkclientmessageinterface.FrameworkClientMessageInterface{
    proxyclientusercommandhandler.ClientUserCommandHandler cmdHandler;
    timeserver.TimeServer myServer;
    String theCommand = "";
    proxyclient.Client myClient;

    public ClientMessageHandler(timeserver.TimeServer myServer, standardiouserinterface.StandardIO myUI, proxyclient.Client myClient) {
        this.myServer = myServer;
        this.cmdHandler = new proxyclientusercommandhandler.ClientUserCommandHandler(myUI, myClient);
        this.myClient = myClient;
    }

    public void handleClientMessage(frameworkclientconnection.FrameworkClientConnection myClientConnection, String msg) {
        if (msg.charAt(0)!=0xFFFF) { //Character.toString((char(-1)) = 0xFFFF
            theCommand += msg;
        } else {
            handleCompleteClientMessage(myClientConnection, theCommand);
            theCommand = "";
        }
    }

    public void handleClientMessage(String theExceptionalEvent) {
        myServer.sendMessageToUI(theExceptionalEvent);
    }

    public void handleCompleteClientMessage(frameworkclientconnection.FrameworkClientConnection myClientConnection, String theCommand) {
        myClient.setMyCC(myClientConnection);
        double randomNum;
        switch (theCommand) {
            case "d":
                myClientConnection.clientDisconnect();
                break;
            case "q":
                cmdHandler.handleUserCommand("1");
                break;
            case "t":
                myServer.sendMessageToUI("Get Time command received from client " + myClientConnection.getClientSocket().getRemoteSocketAddress());
                Calendar cal = Calendar.getInstance();
                myClientConnection.sendStringMessageToClient("The time is: ");
                cal.getTime();
                SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
                for (int i = 0; i < sdf.format(cal.getTime()).length(); i++) {
                    byte msg;
                    msg = (byte) sdf.format(cal.getTime()).charAt(i);
                    myClientConnection.sendMessageToClient(msg);
                }
                myClientConnection.sendMessageToClient((byte) 0xFF);
                myServer.sendMessageToUI("\tClient given time: " + sdf.format(cal.getTime()));
                break;
            case "L1on":
                cmdHandler.handleUserCommand("5");
                break;
            case "L2on":
                cmdHandler.handleUserCommand("6");
                break;
            case "L3on":
                cmdHandler.handleUserCommand("7");
                break;
            case "L4on":
                cmdHandler.handleUserCommand("8");
                break;
            case "L1off":
                cmdHandler.handleUserCommand("9");
                break;
            case "L2off":
                cmdHandler.handleUserCommand("10");
                break;
            case "L3off":
                cmdHandler.handleUserCommand("11");
//                myServer.sendMessageToUI("L3off command received from client " + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                myClientConnection.sendStringMessageToClient("L3off Ack: " + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                myClientConnection.sendMessageToClient((byte) 0xFF);
//                myServer.sendMessageToUI("\tL3off successful. ");
                break;
            case "L4off":
                cmdHandler.handleUserCommand("12");
                break;
            case "gpb1":
                cmdHandler.handleUserCommand("13");
                break;
            case "gpb2":
                cmdHandler.handleUserCommand("14");
                break;
            case "gpb3":
                cmdHandler.handleUserCommand("15");
//                myServer.sendMessageToUI("gpb3 command received from client " + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                randomNum = Math.random();
//                if (randomNum >= 0.5) {
//                    myClientConnection.sendStringMessageToClient("PB3Down" + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                } else {
//                    myClientConnection.sendStringMessageToClient("PB3Up" + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                }
//                myClientConnection.sendMessageToClient((byte) 0xFF);
//                myServer.sendMessageToUI("\tgpb3 successful. ");
                break;
            case "temp":
                cmdHandler.handleUserCommand("16");
//                myServer.sendMessageToUI("temp command received from client " + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                if((randomNum = 60*Math.random()) >= 30)
//                    randomNum = randomNum/2;
//                else
//                    randomNum = -randomNum/2;
//                String myTemperature = String.valueOf((long)(randomNum));
//                myClientConnection.sendStringMessageToClient("The temperature is: " + myTemperature + " C: to client: " + myClientConnection.getClientSocket().getRemoteSocketAddress());
//                myClientConnection.sendMessageToClient((byte) 0xFF);
//                myServer.sendMessageToUI("\tsent: The temperature is: " + myTemperature + " C: to client: " + myClientConnection.getClientSocket().getRemoteSocketAddress());
                break;
        }
    }
    
    private String byteToString(byte theByte) {
        byte[] theByteArray = new byte[1];
        String theString = null;
        theByteArray[0] = theByte;
        try {
            theString = new String(theByteArray, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(FrameworkClientConnection.class.getName()).log(Level.SEVERE, null, ex);
            myServer.sendMessageToUI("Cannot convert from UTF-8 to String; exiting program.");
            System.exit(0);
        } finally {
            return theString;
        }
    }

}
