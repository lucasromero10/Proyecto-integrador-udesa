var express = require('express');
const { response } = require('../app');
var router = express.Router();
const homeController = require("../controllers/homeController");
//localhost:3000/home
/* GET home page. */
router.get('/', function(req, res) {
    res.render('home', { title: 'home' });
  });

router.get('/detalleUsuario',homeController.detalleUsuario);


module.exports = router;