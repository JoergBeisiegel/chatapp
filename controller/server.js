// Externe Node-Module einbinden und applikationsweit zur Verfügung stellen
const express = module.exports = require('express');
const socketIo = module.exports = require('socket.io');

// Interne Node-Module einbinden und applikationsweit zur Verfügung stellen
const http = module.exports = require('http');
const bodyParser = module.exports = require('body-parser');

const config = module.exports = require('./config'); 
const socketEvents = module.exports = require('./socket');

class Server {

  constructor() {
    this.port = process.env.PORT || 8080;
    this.host = 'localhost';

    this.app = express();
    this.httpServer = http.Server(this.app);
    /*
      Hiermit wird magischerweise im Client 
      "/socket.io/socket.io.js" 
      und "io.connect()" bereitgestellt
     */
     this.socket = socketIo(this.httpServer);
  }

  appConfig() {
    this.app.use(
      bodyParser.json()
    );
    new config(this.app);
  }

  /* Routen werden erstmal nur für die Socket-Events benötigt */
  includeRoutes() {
    new socketEvents(this.socket).socketConfig();
  }

  appExecute() {
    this.appConfig();
    this.includeRoutes();

    this.httpServer.listen(this.port, this.host, () => {
      console.log(`Listening on http://${this.host}:${this.port}`);
    });
  }

}

module.exports = new Server();
