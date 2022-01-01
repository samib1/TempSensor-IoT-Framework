/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 30th, 2021
 * PURPOSE	to create my client class to be a subclass of frameworkclient
                override the callbacks
 * SOURCES	Lec 19
 */
package timeclient;

public class TimeClient extends frameworkclient.FrameworkClient{
    public TimeClient(frameworkuserinterface.FrameworkUserInterface myUI){
        super(myUI);
    }
    
    @Override
    public void clientConnected(){
        sendMessageToUI("\tClient has been connected to server on portnum "+ getPort());
    }
    
    @Override
    public void clientDisconnected(){
        sendMessageToUI("\tClient has been disconnected");
    }
    
//    /* ADD ONLY WHEN WE ADDED THOS FUNCTIONALITIES IN CLIENE FRAMEWORK
    @Override
    public void hostNameChanged() { //aka change ip addy
        sendMessageToUI("IP address Changed to "+host);
    }
    
   @Override
    public void portNumberChanged() {
        sendMessageToUI("Port number Changed to "+portNum);
    }
//    */
}
