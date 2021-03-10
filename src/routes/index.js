const express = require('express');
const router = express.Router();
const mysql = require('mysql');

// Estableciendo Conexion 
const conexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'prueba1'
});

// Validacio de la conexion con la base de datos
conexion.connect((error) => {
    if(error){
        console.log(error);
    }else{
        console.log("Conexion Exitosa");
    }
})

// Ruta principal
router.get('/', (req, res) => {
    res.render('index.html', {title: "Inicio"});
});

// Ruta de contacto
router.get('/contact', (req, res) => {
    res.render('contact.html', {title: "Pagina de contacto"});
});

// Funcio de contactarnos
router.post('/insertarContacto', (req, res) => {
    const {correo, mensaje } = req.body;
    conexion.query('INSERT INTO contacto SET?', {
        correo,
        mensaje
    }, (err, result) =>{
        res.render('contact.html', {title: "Pagina de contacto"});
    });
});


// Ruta principal
router.get('/login', (req, res) => {
    res.render('login.html', {title: "Inicio de Sesion"});
});

// Ruta principal
router.post('/validarUser', (req, res) => {
    const {nombre, pas} = req.body;
    let contra;
    let nom;
    conexion.query('SELECT * FROM user', (err, result) => {
        for(let i = 0; i < result.length; i++) {
            if(result[i].contra == pas && result[i].nombre == nombre ){
                contra = result[i].contra;
                nom = result[i].nombre;
            }
        }
        if(contra == pas){
            res.render('index.html', {title: "Inicio de Sesion",});
        }else{
            res.render('login.html', {title: "Inicio de Sesion",});
        }
    }); 
});

// Fucion de isertar los alquileres
router.get('/alquileres', (req, res) => {
    conexion.query('SELECT * FROM alquileres', (err, result) => {
        res.render('alquileres.html', {
            title: "Alquileres",
            alquileres: result
        });
    }); 
});

// Ruta de crear alquileres
router.get('/crearAlquileres', (req, res) => {
    res.render('crearAlquileres.html', {title: "Crea Tu Alquiler"});
});

// Funcio de insertar nuevo usuario
router.post('/insertarNuevoAlquileres', (req, res) => {
    const {nombre,monto,tipo, telefono, lugar, marca, modelo, year, descripcion } = req.body;
    let estado = "Activo";
    conexion.query('INSERT INTO alquileres SET?', {
        nombre,
        monto,
        tipo,
        telefono,
        lugar,
        marca,
        modelo,
        year,
        descri: descripcion,
        estado: estado
    }, (err, result) =>{
        res.render('crearAlquileres.html', {title: "Crea Tu Alquileres"});
    });
});

// Ruta de autos disponibles
router.get('/autosDisponibles', (req, res) => {
    res.render('autosDisponibles.html', {title: "Autos Disponibles"});
});

// Ruta de agregar nuevos autos
router.get('/agregarAuto', (req, res) => {
    res.render('agregarAuto.html', {title: "Agregar Auto Nuevo"});
});

// Funcio de insertar auto nuevo 
router.post('/insertarAutoNuevo', (req, res) => {
    const {marca, modelo, year, tipo, telefono, lugar, ciudad, descripcion } = req.body;
    conexion.query('INSERT INTO autoactivo SET?', {
        marca,
        modelo,
        year,
        tipo,
        telefono,
        lugar,
        ciudad,
        descri: descripcion
    }, (err, result) =>{
        res.render('agregarAuto.html', {title: " Agregar Auto Nuevo"});
    });
});

// Ruta crear un usuario
router.get('/routeCrearUser', (req, res) => {
    res.render('crearUser.html', {title: "Crear Nuevo Usuario"});
});

// Funcio de insertar nuevo usuario
router.post('/crearUser', (req, res) => {
    const {nombre, edad, genero, pais, ciudad, pas} = req.body;
    conexion.query('INSERT INTO user SET?', {
        nombre: nombre,
        edad: edad,
        genero: genero,
        pais: pais,
        ciudad: ciudad,
        contra: pas
    }, (err, result) =>{
        res.render('login.html', {title: "Login"});
    });
});



module.exports = router;