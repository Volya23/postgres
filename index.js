const {Client} = require ('pg');

const configs = {
    host: 'localhost',
    port: 5432,
    user: 'postgres',
    password: 'postgres',
    database: 'studets'
}
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