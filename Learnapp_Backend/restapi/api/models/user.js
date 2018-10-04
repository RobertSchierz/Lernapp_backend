const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    name: String,
    phonenumber: {type: Number, required: true}
});

module.exports = mongoose.model('User', userSchema);