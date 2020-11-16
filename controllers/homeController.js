//<%= post[i].comentarios.idUsuario %>
//<%= posts[i].postUsuario.nombre %>

let db = require('../database/models/index');
let op = db.Sequelize.Op;


let homeController = {

    home: function(req, res) {  
        db.Post.findAll(
            {include:[
                {association: "postUsuario"},
                {association: "comentario"}
            ], 
            
            //    order:[["fechaDePosteo","DESC"]]
            })
            .then(function(posts) {
               // res.send(posts)
                res.render("home", {posts: posts});
            })
            .catch(error =>{
            console.log(error);
            })
    },

    resultadoBusqueda: function (req, res) {
        
        let queBuscoElUsuario = req.query.buscador;
        
        db.Usuario.findAll(
            {
                where:{
                    [op.or]: [{ nombre: { [op.like]: "%" + queBuscoElUsuario + "%"} }, { email: { [op.like]: "%" + queBuscoElUsuario + "%"} }],
                }
          }
        )
        .then(function(usuarios) {
            res.render("resultadoBusqueda", {usuarios: usuarios, queBuscoElUsuario: queBuscoElUsuario});
        }).catch(error =>{
            console.log(error);
        })
     },

   

}

module.exports = homeController;