var server = require('./server/server');

server.start(function () {
  if (process.send) process.send('online');
  console.log("Hapi server started @", server.info.uri);
});

process.on('message', function(message) {
  if (message === 'shutdown') {
    process.exit(0);
  }
});
