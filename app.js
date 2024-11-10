// Importamos el módulo http de Node.js
const http = require('http');

// Creamos un servidor que responda con "Hola Mundo"
const server = http.createServer((req, res) => {
  // Establecemos el tipo de contenido de la respuesta
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('¡Hola Mundo! Proyecto en lenguaje Javascript usando Node');
});

// El servidor escucha en el puerto 3000
server.listen(3000, () => {
  console.log('Servidor corriendo en http://localhost:3000');
});
