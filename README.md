# ApuestasFutbol
Projecto DB2 pagina de apuestas de futbol
Se logro crear, insertar y actualizar la base con la api
No se logro tener la web app funcional

Instrucciones:
1. Descargar el archivo futbol_db.sql y restaurar la bd
2. Abrir la carpeta BD2_apuestas_futbol con un editor
3. Cambiar valores en db.js de Cliente y Pool (user, pass, port, database) a los correspondientes para conectar a la base
4. correr en el terminal -> node server.js  - actualiza la db cada hora y habilita la pagina web

Archivos:
db.js    -> contiene todas las funciones para manipular la bd
api.js   -> contiene las funciones para obtener la data de la api e insertarla a la db
server.js -> server
carpeta public -> recursos y pagina web

Modelado de Datos
https://dbdiagram.io/d/60863744b29a09603d121522

API
https://app.sportdataapi.com/
