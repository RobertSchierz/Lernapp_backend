const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const Group = require('../models/group');
const User = require('../models/user');
const Category = require('../models/category');
const Topic = require('../models/topic');
const Response = require('../models/response');

const multer = require('multer');
const storage = multer.diskStorage({

    destination: function (req, file, callback) {
        callback(null, './mediauploads/');
    },
    filename: function (req, file, callback) {
        var modifiedName = file.originalname.replace(/;/g, "");
        callback(null, Math.random().toString(36).substr(2, 16) + "_" + modifiedName);
    }

});
const upload = multer({
    storage: storage,
    limits: {
        fileSize: 1024 * 1024 * 50
    }
});


router.get('/', (req, res, next) => {
    Response.find()
        .select('_id topic creator text mediatype contenturl')
        .populate('topic creator')
        .populate([{
                path: 'topic',
                model: 'Topic',
                populate: {
                    path: 'creator',
                    model: 'User'
                }

            },
            {
                path: 'topic',
                model: 'Topic',
                populate: [{
                    path: 'category',
                    model: 'Category',
                    populate: {
                        path: 'group',
                        model: 'Group',
                        populate: {
                            path: 'creator members.member',
                            model: 'User',
                        }
                    }
                }, {
                    path: 'category',
                    model: 'Category',
                    populate: {
                        path: 'creator',
                        model: 'User'
                    }
                }]

            }

        ])
        .exec()
        .then(docs => {

            const sortedResponses = [];
            for (var i = 0; i < docs.length; i++) {
                sortedResponses.push(docs[i]);
            }

            if (sortedResponses != null && sortedResponses.length != 0) {
                res.status(200).json({
                    count: sortedResponses.length,
                    responses: sortedResponses
                });
            } else {
                res.statusMessage = "getresponses_noresponsesfound"
                return res.status(404).end();
            }

        }).catch(err => {
            res.statusMessage = "servererror"
            return res.status(500).end();
        })
});

router.post("/", upload.single('contenturl'), (req, res, next) => {

    User.findById(req.body.creator)
        .populate('creator topic')
        .then(user => {
            if (user == null) {
                res.statusMessage = "createresponse_creatornotfound"
                return res.status(404).end();
            } else {
                Topic.findById(req.body.topic)
                    .populate([{

                            path: 'category',
                            model: 'Category',
                            populate: {
                                path: 'group',
                                model: 'Group',
                                populate: {
                                    path: 'creator members.member',
                                    model: 'User'
                                }
                            }
                        },{
                            path: 'category',
                            model: 'Category',
                            populate: {
                                path: 'creator',
                                model: 'User',
                            }  
                        },
                        {
                            path: 'creator',
                            model: 'User'
                        }
                    ])
                    .then(topic => {

                        if (topic == null) {
                            res.statusMessage = "createresponse_topicnotfound"
                            return res.status(404).end();
                        } else {


                            var filepath;
                            if (req.body.mediatype == "text") {
                                filepath = "";
                            } else {
                                filepath = req.file.path;
                            }

                            const response = new Response({
                                _id: mongoose.Types.ObjectId(),
                                topic: topic,
                                creator: user,
                                text: req.body.text,
                                mediatype: req.body.mediatype,
                                contenturl: filepath
                            });

                            response.save(function (err, response) {
                                res.status(201).json({
                                    message: 'response created',
                                    createdResponse: {
                                        _id: response._id,
                                        topic: response.topic,
                                        creator: response.creator,
                                        text: response.text,
                                        mediatype: response.mediatype,
                                        contenturl: response.contenturl
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




})






module.exports = router;