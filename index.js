const { Client } = require ('pg');
const { configs } = require('./configs/index');
//const { loadUsers } = require('./api');
const { getUsers } = require('./api/fetch');

const client = new Client(configs);

async function start() {
    await client.connect();

    const responce = await client.query(`
        INSERT INTO users(first_name, last_name, email, gender, is_subscibe) VALUES
        ('Petr', 'Ivanov', 'petr.ivanov@gmail.com', 'male', true);
    `)

    await client.end();

    console.log(responce);
}

start();

//loadUsers();

console.log(getUsers());