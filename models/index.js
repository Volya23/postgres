const { Client } = require ('pg');
const { configs } = require('../configs/index');
const User = require ('./user');

const client = new Client(configs);

User._client = client;
User._tableName = 'users';

module.exports = {
    client,
    User
}

