var express = require('express');
var router = express.Router();
var db = require('../database');
// another routes also appear here
// this script to fetch data from MySQL databse table
router.get('/', function (req, res) {
  var sql = 'SELECT * FROM filmcast';
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('filmcast-list', { title: 'Film Cast List', listData: data });
  });
});
module.exports = router;
