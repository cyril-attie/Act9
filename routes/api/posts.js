var express = require('express');
var router = express.Router();

const Post = require('../../models/posts.model');

router.post('/', async (req, res) => {
    try {
        console.log(req.body);
        const result = await Post.create(req.body);
        console.log(result);
        res.json(result);
    } catch (err) {
        res.json({ error: err.message });
    }
})

router.get('/', async (req, res) => {
    try {
        console.log(req.body);
        const result = await Post.getAll();
        console.log(result);
        res.json(result);
    } catch (err) {
        res.json({ error: err.message });
    }
});

router.get('/:author_id', async (req, res) => {
    try {
        console.log(req.body);
        const result = await Post.getAllPostsFrom(req.params.author_id);
        console.log(result);
        res.json(result);
    } catch (err) {
        res.json({ error: err.message });
    }
});






module.exports = router;