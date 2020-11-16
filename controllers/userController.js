
let db = require('../database/models');
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");

let userController={
    //Detalle Usuario vista
    detalleUsuario: function (req,res){
    let idUsusarios = req.params.id

    db.Usuario.findByPk(idUsusarios,
        {include:[
            {association: "postUsuario"},
        ]})
    .then(function(elUsuario) {
    res.render('detalleUsuario', {elUsuario: elUsuario});
    })
    .catch(error =>{
    console.log(error);
    })
    },
    // Vitsta miPerfil
    miPerfil: function(req, res){
    
        if (req.session.usuarioLogueado != undefined) {

        db.Usuario.findByPk(req.session.usuarioLogueado.idUsuarios,
            {include:[
                {association: "postUsuario"}
            ]},
            )

        .then(function(elUsuario){
            res.render("miPerfil", {elUsuario: elUsuario})
        })
        } else {
            res.redirect("/home")
        }  
    },

    //Registracion vista
    registracion: function (req, res) {
      if (req.session.usuarioLogueado != undefined) {
        res.redirect("/home");
    }

    res.render("registracion");  
    },
//Registracion base de datos

    registroUsuario: function(req, res) {
      if (req.session.usuarioLogueado != undefined) {
          res.redirect("/home");
      }

      let nombre = req.body.nombre;
      let contrasenia = bcrypt.hashSync(req.body.contrasenia, 10);
      let email = req.body.email;
      let pregSeguridad = req.body.pregSeguridad;
      let resSeguridad = req.body.resSeguridad;
      let fotoPerfil = req.body.fotoPerfil;
      let fechaDeNacimiento = req.body.fecha;

      let user = {
          nombre: nombre,
          fotoPerfil: fotoPerfil,
          contrasenia: contrasenia,
          email: email,
          resSeguridad: resSeguridad,
          pregSeguridad: pregSeguridad,
          fechaDeNacimiento: fechaDeNacimiento,
      }

      db.Usuario.create(user)
      .then(function() {
          res.redirect("/home");
      })
  },
  // Validacion Login
    login: function(req, res) {
      if (req.session.usuarioLogueado != undefined) {
          res.redirect("/home");
      }

      res.render("login");
  },
        procesLogin: function(req, res) {

          if (req.session.usuarioLogueado != undefined) {
              res.redirect("/home");
          }else{
          db.Usuario.findOne(
              {
                where:{
                    [op.or]:[{email: req.body.usuarioOMail}, {nombre: req.body.usuarioOMail}]
                }
              }
          )
          .then(function(usuario) {
              if (usuario == null) {
                  res.render("malMail")
              } else if (bcrypt.compareSync(req.body.contrasenia, usuario.contrasenia) == false) {
                res.render("malaContrasenia")
              } else {
                  req.session.usuarioLogueado = usuario;

                  if (req.body.recordar != undefined) {
                    res.cookie("idUsuarios", usuario.idUsuarios, {expire : new Date() + 1000 * 100});
                }
                res.redirect("/home");
              }
          })

          
      }},

      // Editar Perfil
      editarPerfil: function (req, res){

        if (req.session.usuarioLogueado != undefined) {
            db.Usuario.findByPk(req.session.usuarioLogueado.idUsuarios)
            .then (function (usuario) {
                res.render ("editarPerfil", {usuario: usuario})
            })
        } else {
            res.redirect("/home")
        }
    },

perfilActualizar: function (req, res) {

    let nuevosDatos = {
        nombre: req.body.nombre,
        email: req.body.email,
        pregSeguridad: req.body.pregSeguridad,
        resSeguridad: req.body.resSeguridad,
        fotoPerfil: req.body.fotoPerfil,
        fechaDeNacimiento: req.body.fecha,
    }
    
    db.Usuario.findByPk(req.session.usuarioLogueado.idUsuarios)
    .then(function(usuario){
        if (usuario.pregSeguridad != nuevosDatos.pregSeguridad) {
            res.render("malaPreg")
        }else if (usuario.resSeguridad != nuevosDatos.resSeguridad) {
            res.render("malaRes")
        }else{
            db.Usuario.update(
                nuevosDatos,{
                    where: {
                        idUsuarios: req.session.usuarioLogueado.idUsuarios
                    }
                }
            )
            res.redirect("/user/miPerfil")
        };        
    })
},
//Logout
      logout: function(req,res) {
          req.session.usuarioLogueado = undefined;

          res.redirect("/home");
      }
    }
module.exports = userController;