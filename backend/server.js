var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(8081, function () {
  console.log('Server started... \nListening on port 8081!');
  console.log('To access it using a browser, go to http://localhost:8081')
});