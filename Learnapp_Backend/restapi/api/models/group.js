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
    }],
    grouplink: {
        type: String,
        default: function(){
            var link = "learngroup_";
            var linklength = 20;
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
          
            for (var i = 0; i < linklength; i++)
            link += chars.charAt(Math.floor(Math.random() * chars.length));
          
            return link;
        }
    } 
    
});

module.exports = mongoose.model('Group', groupSchema);