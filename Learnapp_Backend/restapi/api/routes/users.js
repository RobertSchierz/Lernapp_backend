const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const User = require('../models/user');


router.get('/', (req, res, next) => {
    User.find()
        .exec()
        .then(docs => {
            console.log(docs);
            res.status(200).json(docs);
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
            message: "Handling POST requests to /users",
            createdUser: result
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
    User.findById(id).exec().then(doc => {
        console.log("From database", doc);

        if (doc) {
            res.status(200).json(doc);
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
            res.status(200).json(result);
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
            res.status(200).json(result);
        })
        .catch(err => {
            console.log(err);
            res.json.status(500).json({
                error: err
            });
        });

});


module.exports = router;