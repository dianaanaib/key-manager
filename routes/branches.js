const express = require('express');
const router = express.Router();
const branches = require('../services/branches');

router.get('/', async function(req, res, next) {
  try {
    res.json(await branches.getBranches());
  } catch (err) {
    console.error(`Error while getting branches`, err.message);
    next(err);
  }
});

module.exports = router;