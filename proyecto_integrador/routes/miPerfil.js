var express = require('express');
const { response } = require('../app');
var router = express.Router();
const miPerfilController = require("../controllers/miPerfilController")
//localhost:3000/home
/* GET home page. */
router.get('/', function(req, res) {
    res.render('miPerfil', { title: 'miPerfil' });
  });




module.exports = router;