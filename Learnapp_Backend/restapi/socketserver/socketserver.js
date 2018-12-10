
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
            
            socket.emit('status', 'connected')
        })
    
        socket.on('disconnect', function() {
            console.log('Client disconnected.');
        });

        socket.on('GroupDeleted', function(json) {
            var data = JSON.parse(json);
            socket.broadcast.emit('deletedGroup', data)
        });

        socket.on('GroupMemberDeleted', function(json) {
            var data = JSON.parse(json);
            console.log(data);
            socket.broadcast.emit('groupMemberDeleted', data)
        });
    
    
    
    
      
    });



module.exports = io;




