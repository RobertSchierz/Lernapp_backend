
const express = require('express'),
    http = require('http'),
    app = express(),
    server = http.createServer(app),
    io = require('socket.io').listen(server)
    
app.get('/', (req, res) => {

    res.send('Server is running')
});





    
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
            socket.broadcast.emit('groupMemberDeleted', data)
        });

        socket.on('GroupMemberAdded', function(json) {
            var data = JSON.parse(json);
            socket.broadcast.emit('groupMemberAdded', data)
        });

        socket.on('CategoryAdded', function(json) {
            var data = JSON.parse(json);
            socket.broadcast.emit('categoryAdded', data)
        });

        socket.on('TopicAdded', function(json) {
            var data = JSON.parse(json);
            socket.broadcast.emit('topicAdded', data)
        });

        socket.on('ResponseAdded', function(json) {
            var data = JSON.parse(json);
            socket.broadcast.emit('responseAdded', data)
        });




    });

    server.listen(61042);

module.exports = io;




