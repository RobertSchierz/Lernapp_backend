const http = require('http');
const app = require('./app');

const port = process.env.port || 63629;

const server = http.createServer(app);

server.listen(port);


