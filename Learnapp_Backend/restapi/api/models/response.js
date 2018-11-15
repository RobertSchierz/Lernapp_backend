const mongoose = require('mongoose');


const responseSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    topic: {type: mongoose.Schema.Types.ObjectId, ref: 'Topic', required: true},
    creator: {type: mongoose.Schema.Types.ObjectId, ref: 'User', require: true },
    text: {type: String},
    mediatype: {type: String},
    contenturl: {type: String}
});

module.exports = mongoose.model('Response', responseSchema);