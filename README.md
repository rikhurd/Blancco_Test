# TechnicalAssesmentProject

## This project was done by using following technologies:

 QtCreator - https://www.qt.io/product/development-tools
 
 VisualStudio - https://visualstudio.microsoft.com/
 
 Node.js - https://nodejs.org/en
 
 CMake - https://cmake.org/

***Testing was also done by using Postman*** <br>
https://www.postman.com/

## Dependencies:
 Qt 6.8.2
 
 Express 4.21.2 (https://expressjs.com/)

 ### Qt Components we use

 Qt6<br>
 Quick<br>
 Widgets<br>

## How to build the project in Linux based systems

### Building a server

First clone this repository.

Open up your preferred terminal.

1. Go to the `Blancco_Test` subdirectory.

2. Run the following commands to install Node.js:

   **Update package lists:**  
   `sudo apt update`<br>

   **Install Node.js:**  
   `sudo apt install nodejs`<br>

   **Install npm (Node Package Manager):**  
   `sudo apt install npm`<br>

4. Next, run the following to initialize Node.js and install dependencies:

   **Initialize a Node.js project:**  
   `npm init -y`<br>

   **Install Express framework:**  
   `npm install express`<br>

6. Run the start server command:

   **Start the server and show the port:**  
   `node SimpleServer.js`<br>

### Building the Qt App

Since I devloped this in Windwos I tried to find the correct wya to build it in Linux terminal, but didn't have time.

Currently best way to build Qt project is make sure you have the repository cloned and QtCreator installed. With QtCreator open the `CMakeLists` in `QtBlanccoTestProjectFolder` directory.

 ## How the program works

Starting from the server. The server currently listens to a hard coded port 8000 with the endpoint of a POST request at /api/v1/getQML. The post requests takes a file name and its extension and returns the full path as a reply. In this case the file name is always going to be `Main.qml`.

In the Qt app the functionality is done by using C++ and so far I have done both networkmanager and timerbutton.

Network manager is the one that handles the post request. In this case `SendPostRequest` function is the one that makes the post call, taking the URL ("http://localhost:8000/api/v1/getQML) and filename as the parameter. `onReplyFinished` is called when the network request completes because `QNetworkAccessManager` emits the `finished(QNetworkReply*)` signal and `onReplyFinished` we create a temporary file that emits the final file URL as a signal to the main.cpp where it can be displayed via QQuickView.

In the main.cpp we create the necessary objects and make connection so when we get the URL via the signal we set it into the QQuickView object and show it. In the main file we also register the `QQuickItem TimerButton` C++ class as a QML type.

TimerButton has the following functionality:
  -Mouse click registration.
  -Simple stopwatch functionality that counts seconds.
  -Change button text to correspond the state.
  -Display the seconds counted to the user.

Most of the TimerButton functionality is done by using signals. The mouse button functionaltiy was done by using a flag, which starts the whole chain. In the event of the mouse press we toggle the timer, which calls start and stop timer functions, which also set the button text to correspond if the button click starts or stops the timer.

The styling for the button and text is done in QML for uniformity and ease of use.

Lastly is `Main.qml`, which we eventually get from the server by calling POST. `Main.qml` mostly handles the styling part, but for the text that displays the timer's seconds we use `text: button.text` where button is the QML component TimerButton's ID.
