var express = require("express");
var router = express.Router();
let postController = require("../controllers/postController");

router.get("/detallePost/:id", postController.detallePost);

router.get("/agregar", postController.agregarPost);

router.post("/agregar", postController.nuevoPost);

router.post("/borrar", postController.borrar)

router.post("/comentar", postController.comentario)

router.get("/editar/:id", postController.editar)

router.post("/actualizar", postController.actualizar)

module.exports = router;