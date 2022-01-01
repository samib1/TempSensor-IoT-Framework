/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 14th, 2021
 * 
 * PURPOSE	To handle all user commands and create our client
 * SOURCES	Provided server SOURCE CODE

 * Modified     December 6th, 2021
 * Modification Add proxyclient and is used in climsghandler to pass Android commands here
 */
package proxyclientusercommandhandler;

public class ClientUserCommandHandler implements Runnable {
    frameworkuserinterface.FrameworkUserInterface myUI;
    proxyclient.Client myClient;
    String theCommand = ""; //HERE IN THE CLIENT THE COMMAND THREAD FOR RESPONSIVENESS
    
    public ClientUserCommandHandler(frameworkuserinterface.FrameworkUserInterface myUI, proxyclient.Client myClient) {
        this.myUI = myUI;
        this.myClient = myClient;
    }

    
    /*set userMsg instance variable to 
        MsgString it receives as a paramter 
        for the UI and strart processing user CMDs thread
    */
    public void handleUserCommand(String theCommand) {// just like be4 but the cmd is wat we received in SDIO
        this.theCommand = theCommand; 
        Thread myCommandThread = new Thread(this);
        myCommandThread.start(); //running the thread 
    }
    public void run() { //now this is the handleUserCommand thread
        int switchCase = Integer.parseInt(theCommand.split(" ")[0]);
        switch (switchCase) {
//        switch (Integer.parseInt(theCommand)) {                
            case 1: //QUIT          
                if(myClient.isConnected()==true){
                    myClient.stopThisThread();
                    myClient.sendMessageToServer((byte) 'q');
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
//                    myUI.update("Quiting program by User command");
                    System.exit(0);
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 2: //CONNECT
                myClient.connectToServer();
                break;
            case 3: //Disconnect from server
                if(myClient.isConnected()==true){
                    myClient.stopThisThread();
                    myClient.sendMessageToServer((byte) 'd');
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                    myClient.disconnectFromServer();
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 4: //get time
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer((byte) 't');
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                    myUI.update("Sent hello message to server... ");                    
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 5: //LED1 ON
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L1on");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol and //0xFFFD = UTF-8 encoding of 0xFF
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 6: //LED2 ON
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L2on");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 7: //LED3 ON
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L3on");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 8: //LED4 ON
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L4on");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 9: //LED1 OFF
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L1off");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                }
                break;
            case 10: //LED2 OFF
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L2off");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 11: //LED 3 OFF
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L3off");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 12: //LED4 off
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("L4off");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 13: //GET PUSH BTTN 1 STATE
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("gpb1");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 14: //GET PUSH BTTN 2 STATE
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("gpb2");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 15: //GET PUSH BTTN 3 STATE
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("gpb3");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            case 16: //GET TEMPERATURE
                if(myClient.isConnected()==true){
                    myClient.sendMessageToServer("temp");
                    myClient.sendMessageToServer((byte)0xFF); //termination protocol
                    myUI.update("Command was sent to the mx7");
                }else{
                    myUI.update("Client is not connected...");
                } 
                break;
            default: 
                break;
        }
    }
}
