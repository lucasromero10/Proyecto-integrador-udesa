let db = require('../database/models/index');
let op = db.Sequelize.Op;


let homeController = {

    home: function(req, res) {  
        db.Post.findAll(
            {
                order:[["fechaDePosteo","DESC"]]
            })
            .then(function(posts) {
            res.render("home", {posts: posts});
            })
            .catch(error =>{
            console.log(error);
            })
    },
    // Seccion Post
    //Agregar  post vista
    agregarPost: function (req, res) {
        res.render('agregarPost', {title: 'agregarPost'})
    },
    // Detalle Post, hacer relaciones!
    detallePost: function (req, res) {
     res.render('detallePost',{title:'detallePost' })   
    },
    //Borrar Post
    borrar: function(req, res){

        if (req.session.usuarioLogueado == req.body.idUsuario) {
            var idPostBorrar = req.body.idPost;

        db.Post.destroy({
            where: {
                id: idPostBorrar
            }
        })

        res.redirect("/home")
        } else {
            res.redirect("/home/detallePost/" + req.body.idPost)
        }        
    },
    //Editar Post
    editar: function(req, res){

        let idPostEditar = req.params.id;

        db.Post.findByPk(idPostEditar)

        .then(function(post){
            res.render("editarPost", {post: post})
        })
    },
// agregar nuevo post a la base de datos
    nuevoPost: function (req, res) {

        if (req.session.usuarioLogueado != undefined) {
            let nuevoPost = {
                idUsuario: req.session.usuarioLogueado.id,
                urlimagen: req.body.urlimagen,
                pieDeFoto: req.body.texto,
            };      
    
            db.Post.create(nuevoPost)
    
            .then(function(){
                res.redirect("/home");
            })
        } else {
            res.redirect("/miPerfil/registracion")
        }        
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
        let idUsusarios = req.params.id

        db.Usuario.findByPk(idUsusarios)
        .then(function(elUsuario) {
        res.render('detalleUsuario', {elUsuario: elUsuario});
        })
        .catch(error =>{
        console.log(error);
        })
    }

}

module.exports = homeController;