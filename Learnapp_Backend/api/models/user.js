const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    name: {type: String, required: true},
    phonenumber: {type: Number, required: true},
    uniqueclientid: {type: String, require: true}
});

module.exports = mongoose.model('User', userSchema);