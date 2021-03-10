const express = require('express');
const morgan = require('morgan');
const path = require('path');
const bodyParser = require('body-parser');
const app = express();

// Opciones 
app.set('port', 3000);
app.set('views', path.join(__dirname, 'views'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'ejs');

// Middwaler
app.use(bodyParser.urlencoded({extended: false}));

// Rutas
app.use(require('./routes/index'));

// Archivos Estaticos
app.use(express.static(path.join(__dirname, 'public')));

// Escuchando el servidor 
app.listen(app.get('port'), () =>{
    console.log('Server o port', app.get('port'));
});
