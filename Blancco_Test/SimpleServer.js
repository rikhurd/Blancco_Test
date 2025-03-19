const express = require("express");
const fs = require("fs");
const path = require("path");

/**
 * This SimpleServer uses Node.js Express web application framework.
 * 
 * If you haven't already install nodejs from 'nodejs.org/en'
 * 
 * To install the required dependencies use a terminal to initialize Node.js project and to install Express framework.
 * 
 * Open your preferred terminal in the root folder of this project 'Blancco_Test' and input the following commands in order:
 *  
 * 'npm init -y'
 * 'npm install express'
 * 
 */

const app = express();
app.use(express.json());

app.post("/api/v1/getQML", (req, res) => {
    const { filename } = req.body;
    if (!filename) return res.status(400).json({ error: "Filename required" });

    // Get filename from QtBlanccoTestProjectFolder dir. Filename which is sent via POST is got dynamically, but in this test case will always be 'Main.qml'
    const filePath = path.join(__dirname, '..', 'QtBlanccoTestProjectFolder', filename);
    // console.log("File path:", filePath);
    fs.readFile(filePath, "utf8", (err, data) => {
        if (err) return res.status(500).json({ error: "File not found" });

        // Send QML content as plain text.
        res.setHeader('Content-Type', 'text/plain');
        res.send(data);
    });
});

// Currently port is set as 8000, but should be dynamic in the final project.
app.listen(8000, () => console.log("Server running on port 8000"));