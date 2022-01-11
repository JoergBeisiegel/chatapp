const database = module.exports = require('./Database');

class Query {
  constructor() {
    this.database = database;
  }

  async getMessages(limit = '10') {
    const sql = `
      SELECT
        chat_user AS user,
        chat_message AS text,
        chat_color AS color,
        chat_timestamp AS timestamp
      FROM chats
      ORDER BY chat_id DESC
      LIMIT ?
    `;

    const parameters = Object.values(limit);

    try {
      return await this.database.query(sql, parameters);
    } catch (error) {
      console.warn(error);
      return null;
    }
  };

  async insertMessageIntoDb(message) {
    const sql = `
      INSERT INTO chats
      (chat_user,
      chat_message,
      chat_color,
      chat_connection_id,
      chat_ip,
      chat_timestamp
      )
      VALUES (?, ?, ?, ?, ?, ?)
    `;

    /* 
    Die Eigenschaftswerte des Message-Objekts werden ausgelesen
    und dem Array parameters zugewiesen
    */
    const parameters = Object.values(message);

    try {
      return await this.database.query(sql, parameters);
    } catch (error) {
      console.error(error);
      return null;
    }
  };

};

// module.exports = new Query();
module.exports = Query;
