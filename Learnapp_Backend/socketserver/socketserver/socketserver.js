
const express = require('express'),
    http = require('http'),
    app = express(),
    server = http.createServer(app),
    io = require('socket.io').listen(server)
    
app.get('/', (req, res) => {

    res.send('Server is running')
});



server.listen(61042);

io.on('connection', function(socket) {

    console.log('Client connected: ' + socket.id);

    socket.on('joined', function(){
        
        socket.emit('status', 'status')
    })

    socket.on('disconnect', function() {
        console.log('Client disconnected.');
    });


  
});



console.log('Server app is running')

