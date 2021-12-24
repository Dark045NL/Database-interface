var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var crewRouter = require('./routes/crew');
var filmRouter = require('./routes/film');
var filmcastRouter = require('./routes/filmcast');
var filmcrewRouter = require('./routes/filmcrew');
var productiehuisRouter = require('./routes/productiehuis');
var editRouter = require('./routes/edit');
var addRouter = require('./routes/add');
var app = express();
// view engine setup
app.use('/', indexRouter);
app.use('/acteur', usersRouter);
app.use('/crew', crewRouter);
app.use('/film', filmRouter);
app.use('/filmcast', filmcastRouter);
app.use('/filmcrew', filmcrewRouter);
app.use('/productiehuis', productiehuisRouter);
app.use('/edit', editRouter);
app.use('/add', addRouter);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});
// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
module.exports = app;
