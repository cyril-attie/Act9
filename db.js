const mysql = require('mysql2');

const pool = mysql.createPool({
    host: '127.0.0.1',
    user: 'cyril',
    password: 'contrasenia',
    database: 'blog',
    port: 3306
});

global.db = pool.promise();