const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');
const Category = require('../models/category');
const Topic = require('../models/topic');




router.get('/:categoryId', (req, res, next) => {
    Topic.find()
        .select('_id group name creator state type')
        .populate('category creator')
        .populate({
            path: 'category',
            model: 'Category',
            populate: [{
                    path: 'group',
                    model: 'Group',
                    populate: {
                        path: 'members.member creator',
                        model: 'User'
                    }
                },
                {
                    path: 'creator',
                    model: 'User'
                }
            ]
        })
        .exec()
        .then(docs => {

            const sortedTopics = [];
            for (var i = 0; i < docs.length; i++) {
                if (req.params.categoryId == docs[i].category._id) {
                    sortedTopics.push(docs[i]);
                }
            }

            if (sortedTopics != null && sortedTopics.length != 0) {
                res.status(200).json({
                    count: sortedTopics.length,
                    topics: sortedTopics
                });
            } else {
                res.statusMessage = "gettopics_notopicsfound"
                return res.status(404).end();
            }

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })
});


router.post("/", (req, res, next) => {
    User.findById(req.body.creator)
        .populate('creator category')
        .then(user => {
            if (user == null) {
                res.statusMessage = "createtopic_creatornotfound"
                return res.status(404).end();
            } else {
                Category.findById(req.body.category)
                    .populate('category')
                    .then(category => {

                        if (category == null) {
                            res.statusMessage = "createtopic_categorynotfound"
                            return res.status(404).end();
                        } else {


                            const topic = new Topic({
                                _id: mongoose.Types.ObjectId(),
                                name: req.body.name,
                                creator: user,
                                state: req.body.state,
                                type: req.body.type,
                                category: category

                            });

                            topic.save(function (err, topic) {
                                res.status(201).json({
                                    message: 'Topic created',
                                    createdTopic: {
                                        _id: topic._id,
                                        name: topic.name,
                                        creator: topic.user,
                                        state: topic.state,
                                        type: topic.type,
                                        category: topic.category
                                    }
                                });
                            });

                        }

                    });
            }

        })
        .catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        });



});



module.exports = router;