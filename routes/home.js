var express = require('express');
const { response } = require('../app');
var router = express.Router();
const homeController = require("../controllers/homeController");
//localhost:3000/home
/* GET home page. */
router.get('/',homeController.home);
//Ruta detalle usuario
//localhost:3000/home/detalleusuario/id=
router.get('/detalleUsuario/:id',homeController.detalleUsuario);

//ruta agregarpost
//localhost:3000/home/agregarPost
router.get('/agregarPost',homeController.agregarPost);

//Ruta detalle post
//localhost:3000/home/detallePost/id=
router.get('/detallePost/:id',homeController.detallePost);
router.post("/", homeController.nuevoPost)

//Ruta resultado busqueda
//localhost:3000/home/resultadoBusqueda
router.get('/resultadoBusqueda',homeController.resultadoBusqueda);

module.exports = router;