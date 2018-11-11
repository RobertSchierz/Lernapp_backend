const mongoose = require('mongoose');

const categorySchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    group: {type: mongoose.Schema.Types.ObjectId, ref: 'Group', require: true},
    name: {type: String, required: true},
    creator: {type: mongoose.Schema.Types.ObjectId, ref: 'User', require: true }
    
});

module.exports = mongoose.model('Category', categorySchema);