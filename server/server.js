var Hapi = require('hapi');
var routes = require('./routes/routes');
var port = process.env.NODE_PORT;
var host = process.env.NODE_HOST

var server_options = {
  views: {
    engines: { html: require("handlebars") },
    path: __dirname + "/../views",
    layout: true,
    partialsPath: __dirname + "/../views/partials"
  }
}

var server = new Hapi.Server(port, host, server_options);

server.route(routes);

module.exports = server;
