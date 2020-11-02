let db = require('../database/models');
let sequelize = db.sequelize;
let bcrypt = require("bcryptjs");
const { Op } = require("sequelize");



let miPerfilController = {
    miPerfil: function(req, res) {
        res.render('miPerfil', { title: 'miPerfil' })
      },

    
    registracion: function (req, res) {
      if (req.session.usuarioLogueado != undefined) {
        res.redirect("/home");
    }

    res.render("registracion");  
    },
    storeUser: function(req, res) {
      if (req.session.usuarioLogueado != undefined) {
          res.redirect("/home");
      }

      let nombre = req.body.nombre;
      let contrasenia = bcrypt.hashSync(req.body.contrasenia, 10);
      let email = req.body.email;

      let user = {
          nombre: nombre,
          contrasenia: contrasenia,
          email: email
      }

      db.Usuario.create(user)
      .then(function() {
          res.redirect("/home");
      })
  },
    login: function(req, res) {
      if (req.session.usuarioLogueado != undefined) {
          res.redirect("/home");
          //Post.findAll({
            //where: {
         //[Op.or]: [{ a: 5 }, { b: 6 }]
      }

      res.render("login");
  },
        processLogin: function(req, res) {
          console.log(req.body);
          if (req.session.usuarioLogueado != undefined) {
              res.redirect("/home");
          }
          // Caso 1: El mail no esta en la base de datos y yo voy a tener que decirle al usuario: NO EXISTE
          // Caso 2: El mail si existe pero la contraseña esta mal. Le tengo que decir al usuario: Usuario invalido
          // Caso 3: Bienvenido!

          // Casos que no voy a hacer: Dejaste los campos vacios. El mail no es un mail directamente.


          // findAll retorna SIEMPRE un array. Si no matchean los datos findAll traer un array vacío pero SIEMPRE trae un array
          // findOne en cambio tiene dos opciones. O trae el dato, o trae null.
          db.Usuario.findOne(
              {
                  where: [
                      { email: req.body.email },
                  ]
              }
          )
          .then(function(usuario) {
              if (usuario == null) {
                  res.send("El mail no existe")
              } else if (bcrypt.compareSync(req.body.contrasenia, usuario.contrasenia) == false) {
                  res.send("Mala contraseña")
              } else {
                  req.session.usuarioLogueado = usuario;

                  if (req.body.remember != undefined) {
                      res.cookie("idDelUsuarioLogueado", usuario.id, {maxAge : 1000 * 20});
                  }

                  res.redirect("/home");
                  // Todo bien!
              }
          })

          
      },

      logout: function(req,res) {
          req.session.usuarioLogueado = undefined;

          res.redirect("/home");
      }

  }

module.exports = miPerfilController;