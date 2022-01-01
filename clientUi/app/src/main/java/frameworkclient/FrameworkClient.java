/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 14th, 2021
 * 
 * PURPOSE	Managing TCP client communications
                FrameworkClient software creates a socket to connect to a server
 * SOURCES	Lec 14: BASIC MULTITHREADED SERVER
 */
package frameworkclient;

import java.io.*;
import java.net.*;

public class FrameworkClient implements Runnable{
    //initialization 
    Socket clientSocket; //socket to connect to a server and exchange data
//    public String host = "localhost";
//    public int portNum = 7777; // can be changed depending on server port.
    public String host;
    public int portNum; // can be changed depending on server port.
    InputStream input; //to recieve msgs from server
    OutputStream output; //to send msgs to server
    frameworkservermessageinterface.FrameworkServerMessageInterface myServerMessageHandler;
    frameworkuserinterface.FrameworkUserInterface myUI;
    byte theServerMessage = ' ';
    boolean isConnected = false;
    boolean stopThisThread = false;

    
    //client constructor: to create socket to connect to a server
    public FrameworkClient(frameworkuserinterface.FrameworkUserInterface myUI){
        this.myUI = myUI;
//        this.myServerMessageHandler = new timeclientservermessagehandler.ServerMessageHandler(this); //creates the ServerMessagehandler object coz handles 
    }

    public void setServerMessageHandler(frameworkservermessageinterface.FrameworkServerMessageInterface myServerMessageHandler){
        this.myServerMessageHandler = myServerMessageHandler;
//        this.myServerMessageHandler = new timeclientservermessagehandler.ServerMessageHandler(this); //creates the ServerMessagehandler object coz handles 
    }
  
    //***************************CALLBACKS***************************************
    public void clientConnected(){}
    public void clientDisconnected(){}
    public void portNumberChanged(){}
    public void hostNameChanged(){}//akachange ipaddy
    //***************************END OF CALL BACKES*****************************
    
    public void connectToServer(){
        if(isConnected == false){
            try{
//                host = "localhost";
//                portNum = 7777;
                clientSocket = new Socket(host, portNum);
                input = clientSocket.getInputStream();
                output = clientSocket.getOutputStream();
                stopThisThread = false;
                Thread myClientThread = new Thread(this);
                myClientThread.start();
                isConnected = true;
                //CALLBACK METHOD
                clientConnected();
            }
            catch (IOException e){
                sendMessageToUI("Could not connect to server");
                System.exit(1); //means exit with error
            }
        }
    }
    //disconnect -- NOT EVEN BE USING THIS FUNCTION -- SINCE AM SENDING D TO SEVER FOR Disconnect
    public void disconnectClient(){
        try{
            stopThisThread = true;
            isConnected = false;
            clientSocket.close();
            this.input = null;
            this.output = null;
            //CALLBACK METHOD
            clientDisconnected();
        }catch(IOException e){
            sendMessageToUI("Cannot discconet from server");
            System.exit(1);
        }
    }
    
    public void disconnectFromServer(){
        clientSocket = null;
        isConnected = false;
        clientDisconnected();
    }

    //send message
    public void sendMessageToServer(byte msg){
        try{
            output.write(msg);
            output.flush();
        }catch (IOException e){
            System.err.println("Cannot send message to server; exiting program");
            System.exit(0);
        }finally{ 
        }
    }
    
    public void sendMessageToServer(String msg){
        for(int i=0; i<msg.length();i++){
            sendMessageToServer((byte)msg.charAt(i));
        }
    }
    
    @Override
    public void run(){ //getMsgFromServer() In here like in ClientConnection.java
        theServerMessage =0x00;
        String stringMsg="";
        while(stopThisThread == false){
            try{
                theServerMessage = (byte) input.read();
                stringMsg = convertString(theServerMessage);
                //OVERLOADING METHOD TO HANDLE MSG
                myServerMessageHandler.handleServerMessage(stringMsg);
            }catch(IOException e){ 
                //OVERLOADING METHOD TO HANDLE Exception
                myServerMessageHandler.handleServerMessage(e);
                stopThisThread =true;
            }
        }
    }
    
    private String convertString(byte oneByte){
        byte[] theByteArray = new byte[1];
        String theString = null;
        theByteArray[0] = oneByte;
        try{
            theString = new String(theByteArray, "UTF-8");
        }catch (UnsupportedEncodingException ex){
            System.exit(1);
        } finally {
            return theString;
        }    
    }
    
    public void stopThisThread(){
        stopThisThread = true;
    }

    public void setPort(String newPortNum){
        if (!newPortNum.equals("")){
            try{
                this.portNum = Integer.parseInt(newPortNum);
                portNumberChanged();
            }catch(NumberFormatException e){
                myUI.update("Invalid port number");
            }
        }
    }
    
    public void setIPAddress(String newHost){
        if(!newHost.equals("")){
            this.host = newHost;
            hostNameChanged();
        }
    }

    public int getPort(){
        return this.portNum;
    }
    
    public String getHost(){
        return this.host;
    }
    
    public boolean isConnected(){
        return this.isConnected;
    }
    
    //Send MessageToUI
    public void sendMessageToUI(String theString){
        myUI.update(theString);
    }
}
