# TempSensor-IoT-Framework
What: Temperature Sensor Implemented using IoT Framework
Resources: Based off ECE 3740 Systems course taught by Dr. Ken Ferens at univerity of manitoba
Date: Fall 2021 Project

Client Server Architecture:
1. TCP/IP Server: Used an Mx7 pro chip kit booard to act as a server to read the temperature information from the DHT11 temp sensor
2. Client: Used an android client to request temperature
3. Proxery Server: Used to connect the Mx7 board to the android clien since the Mx7 board does not have a wifi card (hence the ethernet wired connection).

Software used:
1. Apache Netbeans to design the Java client code.
2. Android Studio to design the Android app.
3. MPLAB X IDE to design the C server for the Mx7 board and read the DHT11 Temperature sensor information.

Hardware Equipements
1. Ethernet cable to be used for wired connection.
2. DHT11 Temperature sensor used to measure the temperature information.
3. Android phone or Android virtual device to test the app.
4. Windows computer running the mentioned software.

How to run the program
1. Hardware set up: Connect the DHT11 sensor to the Mx7 board using wires, and connect the Mx7 board to the host computer using ethernet connection.
2. Software set up: 
i. Run the C server in MPLABX IDE, 
ii. Run the Java proxy server in NETBEANS IDE (Press 6 to start server and press 2 to start listening)
iii. Run the android app in android studio if virtual device or run the app on your phone and request the temperature infromation. 
