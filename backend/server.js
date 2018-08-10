var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('<h1>Hello World from backend!</h1>');
});

app.listen(8081, function () {
  console.log('Server started... \nListening on port 8081!');
});
