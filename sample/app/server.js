var http = require('http');

var port = 8080;

server = http.createServer(function (req, res) {
    console.log('Responding to request');
    res.end('Hellow World!\n');
}).listen(port);

console.log('Sample server listening on ' + port);

var shutdown = function () {

    console.log('Shuttting down HTTP server');
    server.close(function () {
        console.log('HTTP server closed sucessfully');
        process.exit(0);
    });
    setTimeout(function () {
        logger.error("Could not close connections in time, forcefully shutting down");
        process.exit()
    }, 10 * 1000);
};

process.on('SIGTERM', function () {
    console.log('Got signal SIGTERM, shutting down');
    shutdown();

});

process.on('SIGINT', function () {
    console.log('Got signal SIGINT, shutting down');
    shutdown();
});