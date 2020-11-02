var express = require('express');
const { response } = require('../app');
var router = express.Router();
const miPerfilController = require("../controllers/miPerfilController")
/* GET miperfil page. */
router.get("/registracion", miPerfilController.registracion);

router.post("/registracion", miPerfilController.storeUser);

router.get("/login", miPerfilController.login);

router.post("/login", miPerfilController.processLogin);

router.get("/logout", miPerfilController.logout);



module.exports = router;