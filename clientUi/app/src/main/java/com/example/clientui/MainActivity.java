package com.example.clientui;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Switch;
import android.widget.TextView;

import frameworkclient.FrameworkClient;
import timeclient.TimeClient;
import timeclientusercommandhandler.TimeClientUserCommandHandler;
import timeclientuserinterface.TimeClientUserInterface;

public class MainActivity extends AppCompatActivity implements frameworkuserinterface.FrameworkUserInterface{

    EditText messageWindow; //for the message window
    String portNum = "";
    String ipAddy = "";

    timeclient.TimeClient myClient;//myclient we start them here coz we dont have any testCli here
    timeclientusercommandhandler.TimeClientUserCommandHandler myUserCommandHandler;
    timeclientservermessagehandler.ServerMessageHandler myServerMessageHandler;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        messageWindow = findViewById(R.id.message_window); //i added so it stops screaming

        //CODE BASED OFF TIMECLIENT TEST IN 4.3 MX7 CLI
        myClient= new timeclient.TimeClient(this);//create client
        myUserCommandHandler = new timeclientusercommandhandler.TimeClientUserCommandHandler(this, myClient);//set user command handler
        myServerMessageHandler = new timeclientservermessagehandler.ServerMessageHandler(myClient);
        myClient.setServerMessageHandler(myServerMessageHandler);
    }

    /*From implement ui and has override. Our update is also using the handler below it*/
    @Override
    public void update(String theString){
        Message msg = Message.obtain();
        msg.obj = theString;
        handler.sendMessage(msg);
    }

    /*Purpose: To be able to pass data from an ext thread to the GUI (Client UI) thread*/
    Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            messageWindow.append(" \n " + msg.obj.toString());
        }
    };

    /*Purpose: backup in case the above doesnot work*/
    /*
    Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback()){
        @Override
        public boolean handleMessage(Message msg){
            messageWindow.append(msg.obj.toString());
        }
    };
    */


    /*FOR CLEARING MESSAGE WINDOW*/
    public void clearMsgs(View view){
        EditText messageWindow = findViewById(R.id.message_window);
        messageWindow.setText("");
    }

    /*FOR UPDATE IPADDY*/
    public void updateIp(View view){
        EditText editText = (EditText) findViewById(R.id.set_ip_text);
        ipAddy = editText.getText().toString();
        myClient.setIPAddress(ipAddy);
//        messageWindow.append(" \n " + message);
    }

    /*FOR UPDATE PORTNUM*/
    public void updatePort(View view){
        EditText editText = (EditText) findViewById(R.id.set_port_text);
        portNum = editText.getText().toString();
        myClient.setPort(portNum);
    }

    /*FOR CONNECT*/
    public void connect(View view){
        this.myUserCommandHandler.handleUserCommand("2");
    }

    /*FOR DISCONNECT*/
    public void disconnect(View view){
        this.myUserCommandHandler.handleUserCommand("3");
    }

    /*FOR GET TEMP*/
    public void getTemp(View view){
        this.myUserCommandHandler.handleUserCommand("16");
    }

    /*FOR GET TEMP*/
    public void getTime(View view){
        this.myUserCommandHandler.handleUserCommand("4");
    }

    /*FOR PB1*/
    public void bttn1(View view){
        this.myUserCommandHandler.handleUserCommand("13");
    }

    /*FOR PB2*/
    public void bttn2(View view){
        this.myUserCommandHandler.handleUserCommand("14");
    }


    /*FOR PB3*/
    public void bttn3(View view){
        this.myUserCommandHandler.handleUserCommand("15");
    }


    /*FOR LED1*/
    public void led1(View view){
        Switch ledSwitch = (Switch) findViewById(R.id.led1_bttn);
        if(ledSwitch.isChecked()){
//            messageWindow.append("\nOn");
            this.myUserCommandHandler.handleUserCommand("5");
        }else {
//            messageWindow.append("\noff");
            this.myUserCommandHandler.handleUserCommand("9");
        }
    }

    /*FOR LED2*/
    public void led2(View view){
        Switch ledSwitch = (Switch) findViewById(R.id.led2_bttn);
        if(ledSwitch.isChecked()){
            this.myUserCommandHandler.handleUserCommand("6");
        }else {
            this.myUserCommandHandler.handleUserCommand("10");
        }
    }


    /*FOR LED3*/
    public void led3(View view){
        Switch ledSwitch = (Switch) findViewById(R.id.led3_bttn);
        if(ledSwitch.isChecked()){
            this.myUserCommandHandler.handleUserCommand("7");
        }else {
            this.myUserCommandHandler.handleUserCommand("11");
        }
    }

}