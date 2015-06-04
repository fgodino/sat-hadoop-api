var mysql = require('mysql');

var connection;

var createConnection = function (host, port, user, password) {
  connection = mysql.createConnection({
    host: host,
    port: port,
    user: user,
    password: password
  });

  connection.connect(function (err) {
    if (err) {
      console.log('error connecting to database: ' + err.stack);
    } else {
      console.log ('connected as id: ' + connection.threadId);
    }
  });
}

