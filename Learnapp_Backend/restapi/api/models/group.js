const mongoose = require('mongoose');

const groupSchema = mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    creator: {type: mongoose.Schema.Types.ObjectId, ref: 'User', require: true},
    name: {type: String, required: true},
    members: [{
        role: {type: String, default: "Member"},
        member: {
            type: mongoose.Schema.Types.ObjectId,
            ref: 'User'
        }       
    }] 
    
});

module.exports = mongoose.model('Group', groupSchema);