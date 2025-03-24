const mysql = require('mysql2')
const connection = mysql.createConnection({
    host: 'localhost',
    user: '*****',
    password: '*****',
    database: 'Library_management'
});
connection.connect((err) =>{
    if(err){
        console.error('Error connecting to database', err.message);
        return;
    }
    console.log('Connection to database successful');
});

module.exports = connection;
