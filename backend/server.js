const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);

app.get('/', function(req, res){
  res.send('<h1>Hello world</h1>');
});

io.on('connection', function(socket) {
  socket.on('SEND_MESSAGE', function(msg) {
    io.broadcast.emit('MESSAGE', msg)
  });
});

http.listen(8081, function(){
  console.log('server is running on port 8081');
});
