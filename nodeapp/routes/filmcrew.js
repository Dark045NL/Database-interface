var express = require('express');
var router = express.Router();
var db = require('../database');
// another routes also appear here
// this script to fetch data from MySQL databse table
router.get('/', function (req, res) {
  var sql = 'SELECT * FROM filmcrew';
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('filmcrew-list', { title: 'Film Crew List', listData: data });
  });
});
module.exports = router;
