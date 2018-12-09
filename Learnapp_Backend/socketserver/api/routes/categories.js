const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');
const Category = require('../models/category');




router.get('/:groupId', (req, res, next) => {
    Category.find()
        .select('_id group name creator topics')
        .populate('creator')
        .populate({
                path: 'group',
                model: 'Group',
                populate: {
                    path: 'creator members.member',
                    model: 'User'
                }
            })
        .exec()
        .then(docs => {

            const sortedCategories = [];
            for (var i = 0; i < docs.length; i++) {
                if (req.params.groupId == docs[i].group._id) {
                    sortedCategories.push(docs[i]);
                }
            }

            if (sortedCategories != null && sortedCategories.length != 0) {
                res.status(200).json({
                    count: sortedCategories.length,
                    categories: sortedCategories
                });
            } else {
                res.statusMessage = "getcategories_nocategoriesfound"
                return res.status(404).end();
            }

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })
});

/*
router.get('/', (req, res, next) => {
    Category.find()
        .select('_id group name creator topics.topic')
        .populate('creator')
        .exec()
        .then(docs => {
            res.status(200).json({
                count: docs.length,
                categories: docs.map(doc => {
                    return {
                        _id: doc._id,
                        group: doc.group,
                        name: doc.name,
                        creator: doc.creator,
                    }
                }),

            });

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })
});
*/


router.post("/", (req, res, next) => {
    User.findById(req.body.creator)
        .populate('creator')
        .then(user => {
            if (user == null) {
                res.statusMessage = "createcategory_creatornotfound"
                return res.status(404).end();
            } else {


                Group.findById(req.body.group)
                    .populate('group')
                    .then(group => {

                        if (group == null) {
                            res.statusMessage = "createcategory_groupnotfound"
                            return res.status(404).end();
                        } else {

                            const category = new Category({
                                _id: mongoose.Types.ObjectId(),
                                group: group,
                                name: req.body.name,
                                creator: user,
                                topics: req.body.topics
                            });

                            category.save(function (err, category) {
                                category
                                    .populate({
                                        path: 'group',
                                        model: 'Group',
                                        populate: {
                                            path: 'creator members.member',
                                            model: 'User'
                                        }
                                    })

                                    .execPopulate()
                                    .then(function (result) {
                                        res.status(201).json({
                                            message: 'Category created',
                                            createdCategory: {
                                                _id: result._id,
                                                group: result.group,
                                                name: result.name,
                                                creator: result.creator,
                                                topics: result.topics
                                            }
                                        });
                                    })
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