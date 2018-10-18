const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');

router.get('/', (req, res, next) => {
    Group.find()
        .select('_id name creator')
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
                name: req.body.name
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
                    name: result.name
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
        if(!group){
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


router.patch('/:groupId', (req, res, next) => {
    const id = req.params.userId;
    const updateOperations = {};
    for (const ops of req.body) {
        updateOperations[ops.propName] = ops.value;
    }
    Group.update({
            _id: id
        }, {
            $set: updateOperations
        })
        .exec()
        .then(result => {
            console.log(result);
            console.log("Test: " + newName);
            res.status(200).json({
                message: 'Group updated',
                request: {
                    message: 'The possible Request to get the specific group:',
                    type: 'GET',
                    url: 'http://learnapp.enif.uberspace.de/restapi/users/' + id
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

router.delete('/:groupId', (req, res, next) => {
    Group.remove({_id: req.params.groupId})
    .exec()
    .then(result => {
        res.status(200).json({
            message: 'Group deleted',
            request: {
                message: 'The possible Request to POST new Group:',
                type: 'POST',
                url: 'http://learnapp.enif.uberspace.de/restapi/groups/',
                body: { groupId: 'ID', name: 'String'}
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

module.exports = router;