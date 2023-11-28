const { mapUsers } = require ('../utils/index');

class User {
    static _client;
    static _tableName;

    static async findAll() {
       return await this._client.query(`
        SELECT * FROM ${this._tableName}
        `)
    }

    static async bulkCreate(usersArray) {
        return await this._client.query(`
        INSERT INTO
        ${this._tableName}
        (first_name, last_name, email, gender, is_subscibe, birthday) VALUES
        ${mapUsers(usersArray)}
        RETURNING id
    `)
    }
}

module.exports = User;