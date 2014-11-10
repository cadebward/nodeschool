var koa = require('koa');
var app = koa();
var parse = require('co-body');

/*
 *  POST / 
 */ 
app.use(function* (next) {
  if (this.path !== '/' && this.method !== 'POST') {
    return yield next;
  }

  var body = yield parse(this);

  this.body = body.name.toUpperCase();
});

app.listen(process.argv[2]);