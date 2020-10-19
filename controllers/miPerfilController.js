let db = require('../database/models');
let sequelize = db.sequelize;

let miPerfilController = {
    miPerfil: function(req, res) {
        res.render('miPerfil', { title: 'miPerfil' })
      },

    
    regsitracion: function (req, res) {
    res.render('registracion',{title: 'registracion'})  
    },
    login: function (req, res) {
    res.render('login',{title: 'login'})    
    },

}

module.exports = miPerfilController;