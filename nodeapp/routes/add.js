var express = require('express');
var router = express.Router();
var db = require('../database');
// another routes also appear here
// this script to fetch data from MySQL databse table
router.get('/:table', function (req, res) {
  var sql = `SHOW COLUMNS FROM ${req.params.table}`;
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('add', { table: req.params.table, data });
  });
});
module.exports = router;
