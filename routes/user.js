var express = require("express");
var router = express.Router();
let userController = require("../controllers/userController");
//login 
//http://localhost:3000/user/login
router.get("/login", userController.login)

router.post("/login", userController.processLogin)
//registracion
router.get("/registracion", userController.registracion)
//http://localhost:3000/user/registracion

router.post("/registracion", userController.registracion)


//http://localhost:3000/user/detalleUsuario
//DETALLE USUARIO

router.get("/detalleUsuario/:id", userController.detalleUsuario)
//http://localhost:3000/user/miPerfil

router.get("/miPerfil", userController.miPerfil)

router.get("/logout", userController.logout)
//http://localhost:3000/user/editarPerfil

router.get ("/editarPerfil", userController.editarPerfil)

router.post ("/editarPerfil", userController.perfilActualizar)


module.exports = router