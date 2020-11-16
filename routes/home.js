var express = require('express');
const { response } = require('../app');
var router = express.Router();
const homeController = require("../controllers/homeController");
//localhost:3000/home
/* GET home page. */
router.get('/',homeController.home);
//Ruta detalle usuario
//localhost:3000/home/detalleusuario/id=
//Ruta resultado busqueda
//localhost:3000/home/resultadoBusqueda
router.get('/resultadoBusqueda',homeController.resultadoBusqueda);

module.exports = router;