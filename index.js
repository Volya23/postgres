const { Client } = require ('pg');
const { mapUsers } = require ('./utils')
const { configs } = require('./configs/index');
//const { loadUsers } = require('./api');
const { getUsers } = require('./api/fetch');

const client = new Client(configs);
  
async function start() {
    await client.connect();

    const response = await client.query(`
        INSERT INTO users(first_name, last_name, email, gender, is_subscibe) VALUES
        ${mapUsers(usersArray)}
    `)

    await client.end();

    console.log(response);
}

//start();

//loadUsers();

getUsers();