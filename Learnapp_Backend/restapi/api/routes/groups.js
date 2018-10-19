const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');

router.get('/', (req, res, next) => {
    Group.find()
        .select('_id name creator members')
        //.populate('creator')
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
                        request: {
                            type: 'GET',
                            url: 'http://learnapp.enif.uberspace.de/restapi/groups/' + doc._id
                        }
                    }
                }),

            });

        }).catch(err => {
            res.status(500).json({
                error: err
            });
        })
});

router.post("/", (req, res, next) => {

    User.findById(req.body.creator)
        .then(user => {
            if (!user) {
                return res.status(404).json({
                    message: 'User not found in the Database'
                });
            }


            const group = new Group({
                _id: mongoose.Types.ObjectId(),
                creator: req.body.creator,
                name: req.body.name,
                members: req.body.members
            });

            return group.save();

        })
        .then(result => {
            console.log(result);
            res.status(201).json({
                message: 'Group created',
                createdGroups: {
                    _id: result._id,
                    creator: result.creator,
                    name: result.name,
                    members: result.members
                },
                request: {
                    type: 'GET',
                    url: 'http://learnapp.enif.uberspace.de/restapi/groups/' + result._id
                }
            });
        })
        .catch(err => {
            console.log(err);
            res.status(500).json({
                error: err
            })
        });



});

router.get('/:groupId', (req, res, next) => {
    Group.findById(req.params.groupId)
        .exec()
        .then(group => {
            if (!group) {
                return res.status(404).json({
                    message: "Group not found: " + req.params.groupId
                });
            }
            res.status(200).json({
                group: group,
                request: {
                    type: "GET",
                    url: "http://learnapp.enif.uberspace.de/restapi/groups"
                }
            })
        })
        .catch(err => {
            res.status(500).json({
                error: err
            });
        });


});




router.delete('/:groupId', (req, res, next) => {
    Group.remove({
            _id: req.params.groupId
        })
        .exec()
        .then(result => {
            res.status(200).json({
                message: 'Group deleted',
                request: {
                    message: 'The possible Request to POST new Group:',
                    type: 'POST',
                    url: 'http://learnapp.enif.uberspace.de/restapi/groups/',
                    body: {
                        groupId: 'ID',
                        name: 'String',
                        members: '[{Members}]'
                    }
                }
            });
        })
        .catch(err => {
            console.log(err);
            res.status(500).json({
                error: err
            })
        });
});

//Funktionen für Member:
router.patch('/:groupId', (req, res, next) => {

    Group.findById(req.params.groupId)
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
                    for (var i = 0; i < group.members.length; i++) {
                        if (group.members[i].member == searchedMemberId) {
                            checkMemberExists = true;
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
                                console.log(result);
                                res.status(200).json({
                                    message: 'Groupmember deleted: ' + searchedMemberId,
                                });
                            })
                            .catch(err => {
                                console.log(err);
                                res.status(500).json({
                                    error: err
                                })
                            });;



                    } else {
                        return res.status(404).json({
                            message: "Groupmember not found: " + searchedMemberId
                        });
                    }

                    break;

                case "postMember":

                    User.findById(req.body.memberId)
                        .then(user => {
                            if (!user) {
                                return res.status(404).json({
                                    message: 'User not found in the Database'
                                });
                            }

                            var checkMemberExists = false;
                            for (var i = 0; i < group.members.length; i++) {
                                if (group.members[i].member == searchedMemberId) {
                                    checkMemberExists = true;
                                }
                            }  

                            if(!checkMemberExists){
                               
                                Group.updateOne({
                                    _id: req.params.groupId
                                }, {
                                    $push: {
                                        members: 
                                            {
                                                "role": "Member",
                                                "member": searchedMemberId
                                            }
                                        }
                                    }
                                ).exec().then(result => {
                                    console.log(result);
                                    res.status(200).json({
                                        message: 'Groupmember added: ' + searchedMemberId,
                                    });
                                })
                                .catch(err => {
                                    console.log(err);
                                    res.status(500).json({
                                        error: err
                                    })
                                });;  

                            }else{
                                return res.status(406).json({
                                    message: "Groupmember allready in Group!: " + searchedMemberId
                                });
                            }



                        })
                        .catch(err => {
                            console.log(err);
                            res.status(500).json({
                                error: err
                            })
                        });


                    break;

                default:
                    break;
            }

        })
        .catch(err => {
            res.status(500).json({
                error: err
            });
        });












});



module.exports = router;