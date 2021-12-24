var express = require('express');
var router = express.Router();
var db = require('../database');
// another routes also appear here
// this script to fetch data from MySQL databse table
router.get('/', function (req, res) {
  var sql = 'SELECT * FROM acteur';
  db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('user-list', { title: 'Acteur List', listData: data });
  });
});

router.get('/edit/:id', function (req, res) {
  //TODO: UPDATE QUERY
  //all the values are in req.query and then just render
  // var sql = 'SELECT * FROM acteur';
  // db.query(sql, function (err, data, fields) {
  //   if (err) throw err;
  //   res.render('user-list', { title: 'Acteur List', listData: data });
  // });



  console.log(req.query);
});

router.get('/add', function (req, res) {
  //TODO: INSERT QUERY
  //all the values are in req.query and then just render
  // var sql = 'SELECT * FROM acteur';
  // db.query(sql, function (err, data, fields) {
  //   if (err) throw err;
  //   res.render('user-list', { title: 'Acteur List', listData: data });
  // });
});

router.get('/delete/:id', function (req, res) {
  var sql = 'DELETE FROM acteur WHERE ActeurID=' + req.params.id;
  var sql2 = 'SELECT * FROM acteur';
  db.query(sql, function (err) {
    if (err) throw err;
    db.query(sql2, function (err1, data, fields) {
      if (err1) throw err1;
      res.render('user-list', { title: 'Acteur List', listData: data });
    });
  })
})
module.exports = router;
