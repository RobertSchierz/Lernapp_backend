
const io = require('socket.io')({
    path: '/',
    serveClient: false,
  });
  
  // either
  const server = require('http').createServer();
  
  io.attach(server, {
    pingInterval: 10000,
    pingTimeout: 5000,
    cookie: false
  });
  
  server.listen(63630);
  

io.on('connection', function(socket){
    console.log("Client connected SOCKETIO");
})