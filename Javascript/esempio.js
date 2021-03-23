
var http = require('http');
var fs = require('fs');

var server = http.createServer((request, response) => {
    if (request.url === '/') {
        fs.readFile(__dirname + "/index.html", (err, data) => {
            response.writeHead(200, {'Content-type': 'text/html; charset=utf-8'});
            response.end(data);
        });
    } else if (request.url === '/styles.css') {
        fs.readFile('styles.css', function(err, data){
            response.writeHead(200, {'Content-Type': 'text/css'});
            response.end(data);
        });
    }
})

server.listen(3000)

