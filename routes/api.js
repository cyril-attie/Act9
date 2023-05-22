const router = require('express').Router();

const autoresApiRouter = require('./api/autores');
const postsApiRouter = require('./api/posts');

router.use('/autores', autoresApiRouter);
router.use('/posts', postsApiRouter);

module.exports = router;

