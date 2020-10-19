var express = require('express');
const { response } = require('../app');
var router = express.Router();
const miPerfilController = require("../controllers/miPerfilController")
/* GET miperfil page. */
//localhost:3000/miPerfil
router.get('/',miPerfilController.miPerfil);
//localhost:3000/miPerfil/registracion
router.get('/registracion',miPerfilController.regsitracion);
//localhost:3000/miPerfil/login
router.get('/login',miPerfilController.login)



module.exports = router;