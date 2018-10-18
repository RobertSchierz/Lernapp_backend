const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const User = require('../models/user');


router.get('/', (req, res, next) => {
    User.find()
        .select('name phonenumber _id')
        .exec()
        .then(docs => {
            const response = {
                count: docs.length,
                //bodyformat_POST: '{"name": "USERNAME","phonenumber": "PHONENUMBER" }' ,
                //bodyformat_PATCH: '[{"propName": "name", "value": "NewName"}]' ,
                users: docs.map(doc => {
                    return {
                        name: doc.name,
                        phonenumber: doc.phonenumber,
                        _id: doc._id,
                        requests: {
                            message: 'The possible Request to get the specific user: ' + doc.name,
                            type: 'GET',
                            url: 'http://learnapp.enif.uberspace.de/restapi/users/' + doc._id
                        }
                    }
                })
            };
            res.status(200).json(response);
        })
        .catch(err => {
            console.log(err);
            res.status(500).json({
                error: err
            })
        })
});

router.post('/', (req, res, next) => {

    const _user = new User({
        _id: new mongoose.Types.ObjectId(),
        name: req.body.name,
        phonenumber: req.body.phonenumber
    });

    _user.save().then(result => {
        console.log(result);
        res.status(201).json({
            message: "Created user successfully",
            createdUser: {
                name: result.name,
                phonenumber: result.phonenumber,
                _id: result._id,
                request: {
                    type: 'POST',
                    url: 'http://learnapp.enif.uberspace.de/restapi/users/' + result._id
                }
            }
        });
    }).catch(err => {
        console.log(err);
        res.status(500).json({
            error: err
        });
    });
});

router.get('/:userId', (req, res, next) => {

    const id = req.params.userId;
    User.findById(id)
        .select('name phonenumber _id')
        .exec()
        .then(doc => {
            console.log("From database", doc);

            if (doc) {
                res.status(200).json({
                    user: doc
                });
            } else {
                res.status(404).json({
                    message: 'No valid Entry found for ID'
                });
            }


        }).catch(err => {
            console.log(err);
            res.status(500).json({
                error: err
            });
        });

});


router.patch('/:userId', (req, res, next) => {
    const id = req.params.userId;
    const updateOperations = {};
    for (const ops of req.body) {
        updateOperations[ops.propName] = ops.value;
    }
    User.update({
            _id: id
        }, {
            $set: updateOperations
        })
        .exec()
        .then(result => {
            console.log(result);
            console.log("Test: " + newName);
            res.status(200).json({
                message: 'User updated',
                request: {
                    message: 'The possible Request to get the specific user:',
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

router.delete('/:userId', (req, res, next) => {
    const id = req.params.userId;
    User.remove({
            _id: id
        })
        .exec()
        .then(result => {
            res.status(200).json({
                message: 'User deleted',
                request: {
                    type: 'POST',
                    url: 'http://learnapp.enif.uberspace.de/restapi/users/',
                    body: {name : 'String', phonenumber: 'Number'}
                }
            });
        })
        .catch(err => {
            console.log(err);
            res.json.status(500).json({
                error: err
            });
        });

});



module.exports = router;