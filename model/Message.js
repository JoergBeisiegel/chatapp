class Message {

  constructor(data, socket) {
    this.chat_user = data.user;
    this.chat_message = data.text;
    // Der voreingestellte Wert (schwarz) wird nicht automatisch übernommen
    // wenn der Wert undefined ist, wird hier der Standardwert schwarz gesetzt
    this.chat_color = data.color || '#000000';
    this.chat_connection_id = socket.id;
    this.chat_ip = socket.conn.remoteAddress;
    this.chat_timestamp = new Date();
  }

}

module.exports = Message;
