var express = require('express');
var router = express.Router();
var db = require('../database');
// another routes also appear here
// this script to fetch data from MySQL databse table
router.get('/:table/:id', function (req, res) {
  var sql = `SHOW COLUMNS FROM ${req.params.table}`;
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    var sql2 = `SELECT * FROM ${req.params.table} WHERE ${data[0].Field} = ${req.params.id}`;
    db.query(sql2, function (err2, data2, field) {
      if (err2) throw err2;
      res.render('edit', { table: req.params.table, data, element: data2[0] });
    })

  });
});
module.exports = router;
