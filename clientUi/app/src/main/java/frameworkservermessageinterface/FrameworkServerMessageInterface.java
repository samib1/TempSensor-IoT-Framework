/*
 * @author	Byaruhanga Asiimwe Sami, 007793446, byaruhanga@myumanitoba.ca
 * @version	October 30th, 2021
 * PURPOSE	to create frameworkclientuserinterface
 * SOURCES	Lec 19: slide #8
 */
package frameworkservermessageinterface;
import java.io.*;

public interface FrameworkServerMessageInterface {
    public abstract void handleServerMessage(String theString); //will comeback to add parameters
    public abstract void handleServerMessage(IOException theExceptionalEvent); //will comeback to add parameters
}
