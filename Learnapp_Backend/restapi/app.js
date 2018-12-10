const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const custom_env = require('./nodemon.json');

const userRoutes = require('./api/routes/users');
const groupRoutes = require('./api/routes/groups');
const categoryRoutes = require('./api/routes/categories');
const topicRoutes = require('./api/routes/topics');
const responseRoutes = require('./api/routes/responses');





//mongoose.connect('mongodb://learnapp_mongoadmin:Xahy4ozuje@localhost:31484/users?authSource=users', {useNewUrlParser: true})

mongoose.connect("mongodb://" + custom_env.env.USERNAME  + ":"+ custom_env.env.PASSWORD +"@localhost:"+ custom_env.env.PORT +"/"+ custom_env.env.DB +"", {
    useNewUrlParser: true,
    auth: {
        authdb: custom_env.env.DB
    }


});


app.use(morgan('dev'));
app.use('/mediauploads' , express.static('mediauploads'));
app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(bodyParser.json());

app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers',
        'Origin, X-Requested-With, Content-Type, Accept, Authorization');

    if (req.method === 'OPTIONS') {
        res.header('Access-Control-Allow-Methods', 'Put, Post, Patch, Delete, Get');
        return res.status(200).json({});
    }
    next();
});

//Routes 
app.use('/users', userRoutes);
app.use('/groups', groupRoutes);
app.use('/categories', categoryRoutes);
app.use('/topics', topicRoutes);
app.use('/responses', responseRoutes);

app.use((req, res, next) => {

    const error = new Error('not found');
    error.status = 404;
    next(error);

});

app.use((error, req, res, next) => {
    res.status(error.status || 500);
    res.json({
        error: {
            message: error.message
        }
    })
});
 

module.exports = app;