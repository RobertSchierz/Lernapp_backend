const mongoose = require('mongoose');


const topicSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    name: {type: String, required: true},
    content: {type: String, required: true},
    creator: {type: mongoose.Schema.Types.ObjectId, ref: 'User', require: true },
    state: {type: String, default: "Open", required: true},
    type: {type: String, default: "question", required: true},
    category: {type: mongoose.Schema.Types.ObjectId, ref: 'Category', required: true},
});

module.exports = mongoose.model('Topic', topicSchema);