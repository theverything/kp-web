var server = require('./server/server');

server.start(function () {
  console.log("Hapi server started @", server.info.uri);
});
