const mysql = require('mysql2/promise');
const connection = require("./config/db.js");


async function testConnection() {
    try {
        const connection = await mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: '123',
            database: 'crudfinance'
        });
        console.log('Conexão com o banco de dados bem-sucedida!');
        // Fechar a conexão após o teste
        await connection.end();
    } catch (error) {
        console.error('Erro ao conectar ao banco de dados:', error);
    }
}

testConnection();
