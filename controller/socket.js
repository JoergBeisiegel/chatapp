'use strict';

const Query = module.exports = require('./query');
const Message = module.exports = require('./../model/Message');
class Socket {

  constructor(socket) {
    this.connections = [];
    this.io = socket;
  }

  socketEvents() {

    this.io.on('connection', socket => {
      console.log(`Neue Verbindung: ${socket.id}, ${socket.conn.remoteAddress}`);
      let sessionData = { socketId: socket.id, user: null };

      socket.on('publicMessage', data => {
        sessionData.user = data.user;

        this.updateConnection(sessionData);

        const message = new Message(data, socket);
        data.users = this.connections;

        // message-Objekt in Datenbank einfügen
        const result = new Query().insertMessageIntoDb(message);

        this.io.emit('publicMessage', data);
      });

      socket.on('getMessages', data => {
        data.users = this.connections;
        /*
         * Bei Präsentation darauf hinweisen, dass
         * es bei der Promise beim Auflösen von JSON-Daten zu Problemen
         * kommen kann, die mit .then() umgangen werden können
         */
        
        new Query().getMessages(data).then(
          rows => this.io.emit('sendMessages', rows)
        );
      });

      socket.on('privat', data => {
        // TODO: sending to individual socketid (private message)
        socket.to('<socketid>').emit('hey', 'I just met you');
      })

      socket.on('disconnecting', () => {
        this.removeConnection(socket.id);
        console.log('Tchüss');
      })

    });

  }

  socketConfig() {
    // Konsoleneingabe als Ergeignis zum Senden hinzufügen
    this.addStdinListener();
    this.socketEvents();
  }

  updateConnection(sessionData) {
    const idx = this.connections.findIndex(connection => connection.socketId == sessionData.socketId);
    if (idx == -1) {
      this.connections.push(sessionData);
    }
  }

  removeConnection(socketId) {
    const idx = this.connections.findIndex(connection => connection.socketId == socketId);
    this.connections.splice(idx, 1);
  }

  addStdinListener() {
    // Konsoleneingabe als Ergeignis zum Senden hinzufügen
    const stdin = process.openStdin();
    stdin.addListener('data', daten => {
      this.io.emit('nachricht', daten.toString())
    });
  }

}

module.exports = Socket;
