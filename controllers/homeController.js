let db = require('../database/models/index');
let op = db.Sequelize.Op;


let homeController = {

    home: function(req, res) {  
        db.Post.findAll(
            {
                order:["fechaDePosteo"]
            }).then(function(posts) {
            res.render("home", {posts: posts});
        }).catch(error =>{
            console.log(error);
        })
    },
    agregarPost: function (req, res) {
        res.render('agregarPost', {title: 'agregarPost'})
    },
    detallePost: function (req, res) {
     res.render('detallePost',{title:'detallePost' })   
    },
    resultadoBusqueda: function (req, res) {
        
        let queBuscoElUsuario = req.query.buscador;
        
        db.Usuario.findAll(
            {
                where: [
                   { nombre: { [op.like]: "%" + queBuscoElUsuario + "%"} }
                ],
                order: ["nombre"],
            }
        )
        .then(function(usuarios) {
            res.render("resultadoBusqueda", {usuarios: usuarios, queBuscoElUsuario: queBuscoElUsuario});
        }).catch(error =>{
            console.log(error);
        })
     
    },
    detalleUsuario: function (req,res){
     res.render('detalleUsuario', { title: 'detalleUsuario' });
    }
};

module.exports = homeController;