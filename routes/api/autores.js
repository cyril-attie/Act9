var express = require('express');
var router = express.Router();

const Autor = require('../../models/authors.model');


router.post('/', async (req, res) => {
  try {
    console.log(req.body);
    const result = await Autor.create(req.body);
    console.log(result);
    res.json(result);
  } catch (err) {
    res.json({ error: err.message });
  }
})



router.get('/', async (req, res) => {
    try {
      console.log(req.body);
      const result = await Autor.getAll();
      console.log(result);
      res.json(result);
    } catch (err) {
      res.json({ error: err.message });
    }
  })


module.exports = router;