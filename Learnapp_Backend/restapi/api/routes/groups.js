const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');

 

// Get all Groups where usere is creator
router.get('/usergroups/:userId', (req, res, next) => {
    Group.find()
        .select('_id name creator members grouplink')
        .populate('creator members.member')
        .exec()
        .then(docs => {
            const sortedGroups = [];
            for (var i = 0; i < docs.length; i++) {
                if (req.params.userId == docs[i].creator._id) {
                    sortedGroups.push(docs[i]);
                }
            }

            if (sortedGroups != null && sortedGroups.length != 0) {

                res.status(200).json({
                    count: sortedGroups.length,
                    groups: sortedGroups
                });
            } else {
                res.statusMessage = "getcreatorgroups_nogroupsfound"
                return res.status(404).end();
            }



        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })


});

// Get all Groups where usere is creator
router.get('/usergroupsall/:userId', (req, res, next) => {
    Group.find()
        .select('_id name creator members grouplink')
        .populate('creator members.member')
        .exec()
        .then(docs => {
            const sortedGroups = [];
            for (var i = 0; i < docs.length; i++) {
                if (req.params.userId == docs[i].creator._id) {
                    sortedGroups.push(docs[i]);
                } else {
                    for (var j = 0; j < docs[i].members.length; j++) {
                        if (req.params.userId == docs[i].members[j].member._id) {
                            sortedGroups.push(docs[i]);
                        }
                    }
                }
            }

            if (sortedGroups != null && sortedGroups.length != 0) {

                res.status(200).json({
                    count: sortedGroups.length,
                    groups: sortedGroups


                });
            } else {
                res.statusMessage = "getgroups_nogroupsfound"
                return res.status(404).end();
            }



        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })


});



router.get('/', (req, res, next) => {
    Group.find()
        .select('_id name creator members grouplink')
        .populate('creator members.member')
        .exec()
        .then(docs => {
            res.status(200).json({
                count: docs.length,
                groups: docs.map(doc => {
                    return {
                        _id: doc._id,
                        creator: doc.creator,
                        name: doc.name,
                        members: doc.members,
                        grouplink: grouplink,
                        request: {
                            type: 'GET',
                            url: 'http://learnapp.enif.uberspace.de/restapi/groups/' + doc._id
                        }
                    }
                }),

            });

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })
});

router.post("/", (req, res, next) => {
    User.findById(req.body.creator)
        .populate('creator members.member')
        .then(user => {

            if(user == null){
                res.statusMessage = "creategroup_creatornotfound"
                return res.status(404).end();
            }else{
                const group = new Group({
                    _id: mongoose.Types.ObjectId(),
                    creator: req.body.creator,
                    name: req.body.name,
                    members: req.body.members
                });
    
                group.save(function (err, group) {
                    group
                        .populate('creator')
                        .populate('members.member')
                        .execPopulate()
                        .then(function (result) {
                            res.status(201).json({
                                message: 'Group created',
                                createdGroups: {
                                    _id: result._id,
                                    creator: result.creator,
                                    name: result.name,
                                    members: result.members,
                                    grouplink: result.grouplink
                                },
                                request: {
                                    type: 'GET',
                                    url: 'http://learnapp.enif.uberspace.de/restapi/groups/' + result._id
                                }
                            });
                        })
    
    
                }); 
            }    

        })
        .catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });



});

router.get('/:groupId', (req, res, next) => {
    Group.findById(req.params.groupId)
        .select('_id name creator members grouplink')
        .populate('creator members.member')
        .exec()
        .then(group => {
            if (!group) {
                return res.status(404).json({
                    message: "Group not found: " + req.params.groupId
                });
            }
            res.status(200).json({
                group: group
            })
        })
        .catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });


});




router.delete('/:groupId', (req, res, next) => {


    Group.findById(req.params.groupId).exec().then(group =>{
        if(group == null){
            res.statusMessage = "deletegroup_groupnotfound"
            return res.status(404).end();
        }else{
            Group.deleteOne({
                _id: req.params.groupId
            })
            .exec()
            .then(result => {
                res.status(200).json({
                    message: 'Group deleted'
                });
            })
            .catch(err => {
                res.statusMessage = "servererror"
                return res.status(500).end();
            });
        }
    });
   


   
});

//Funktionen für Grouplink
router.patch('/grouplink/:grouplink', (req, res, next) => {

    Group.find()
        .select('_id name creator members grouplink')
        .exec()
        .then(docs => {

            var group = null;
            for (var i = 0; i < docs.length; i++) {
                if (req.params.grouplink == docs[i].grouplink) {
                    group = docs[i];
                }
            }

           

            if (group != null) {
                if(req.body.memberId == group.creator._id){
                    res.statusMessage = "linkinvite_iscreator"
                    return res.status(406).end();
                }else{
                    postMember(req, res, req.body.memberId, group, true);
                }
               
            } else {
                res.statusMessage = "linkinvite_groupnotfound"
                return res.status(404).end();

            }

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });

});


//Funktionen für Member:
router.patch('/:groupId', (req, res, next) => {

    Group.findById(req.params.groupId)
        .populate({
            path: 'members members.member',
            model: 'User' 
        })
        .exec()
        .then(group => {
            if (!group) {
                return res.status(404).json({
                    message: "Group not found: " + req.params.groupId
                });
            }

            const searchedMemberId = req.body.memberId;

            // Patchcases for Groupmembers
            switch (req.body.method) {
                case "deleteMember":

                    var checkMemberExists = false;
                    var groupmember;
                    for (var i = 0; i < group.members.length; i++) {
                        if (group.members[i].member._id == searchedMemberId) {
                            checkMemberExists = true;
                            groupmember = group.members[i];
                        }
                    }

                    if (checkMemberExists) {

                        //If Group and member exists then delete it
                        Group.updateOne({
                                _id: req.params.groupId
                            }, {
                                $pull: {
                                    members: {
                                        member: searchedMemberId
                                    }
                                }
                            }).exec().then(result => {
                                res.status(200).json({
                                    message: 'Groupmember deleted: ' + searchedMemberId,
                                    member: groupmember,
                                    group: group._id
                                });
                            })
                            .catch(err => {
                                res.statusMessage = "servererror"
                                return res.status(500).end();
                            });;



                    } else {
                        res.statusMessage = "deletemember_membernotingroup"
                        return res.status(404).end();
                    }

                    break;

                case "postMember":

                    postMember(req, res, searchedMemberId, group, false);
                    break;

                default:
                    break;
            }

        })
        .catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });
});

function postMember(req, res, searchedMemberId, group, linkbool) {

    User.findById(req.body.memberId)
        .then(user => {
            if (!user) {
                if (linkbool) {
                    res.statusMessage = "linkinvite_usernotfound"
                    return res.status(404).end();
                } else {
                    res.statusMessage = "postuser_usernotfound"
                    return res.status(404).end();
                }

            }

            var checkMemberExists = false;
            for (var i = 0; i < group.members.length; i++) {
                if (group.members[i].member == searchedMemberId) {
                    checkMemberExists = true;
                }
            }

            if (!checkMemberExists) {

                var neededGroupID = null;
                if (linkbool == true) {
                    neededGroupID = group._id;
                } else {
                    neededGroupID = req.params.groupId;
                }

                Group.updateOne({
                        _id: neededGroupID
                    }, {
                        $push: {
                            members: {
                                "role": "Member",
                                "member": searchedMemberId
                            }
                        }
                    }).exec().then(result => {


                        Group.findById(neededGroupID)
                            .exec()
                            .then(group => {
                                group
                                    .populate('creator')
                                    .populate('members.member')
                                    .execPopulate()
                                    .then(function (result) {
                                        var addeduser = null;
                                        for (var i = 0; i < result.members.length; i++) {
                                            if (result.members[i].member._id == searchedMemberId) {
                                                addeduser = result.members[i];
                                            }
                                        }
                                        if (addeduser != null) {
                                            res.status(200).json({
                                                message: 'Groupmember added: ' + searchedMemberId,
                                                member: addeduser,
                                                group: group._id

                                            });
                                        } else {
                                            if (linkbool) {
                                                res.statusMessage = "linkinvite_posterror"
                                                return res.status(404).end();
                                            } else {
                                                res.statusMessage = "postuser_posterror"
                                                return res.status(404).end();
                                            }

                                        }
                                    })
                            })
                    })
                    .catch(err => {
                        res.statusMessage = "servererror"
                        return res.status(500).end();
                    });;

            } else {
                res.statusMessage = "linkinvite_allreadyIn"
                return res.status(406).end();
            }

        })
        .catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });
}


module.exports = router;