let db = require('../database/models/index');
let op = db.Sequelize.Op;


//En esta seccion vamos a encontrar todo lo relacionado con CRUD (las siglas son CREATE, RELACIONES, UPDATE, DESTROY)
// CREATE lo usamos para incorporar los postesos/comentarios a la base de datos
// RELACIONES las usamos para poder usar info. de disintas tablas en una misma vista, sean los onmbres de los perfiles
// o los comentarios de los usuarios
//UPDATE lo usamos para poder cambiar/actualizar la informacion de los usuarios y de los posteos especificos e imprimirlas en las vistas
//DESTROY lo usamos para borrar los posteos de las bases de datos y que desaparezcan de las vistas



let postController = {
    agregarPost: function (req, res) {
        res.render('agregarPost', {title: 'agregarPost'})
    },
    // Detalle Post, hacer relaciones!

    detallePost: function (req, res) {

        var id = req.params.id;

        db.Post.findByPk(id,
            {include:[
                {association: "postUsuario"},
                {association: "comentario"}
            ]})
          
        .then(function(post){  
                res.render("detallePost", {post: post })
        })
    },
    //Borrar Post
    borrar: function(req, res){
            
        var idPostBorrar = req.params.id;
    //destroy
        db.Post.destroy({
            where: {
                idposts: idPostBorrar
            }
        })
        res.redirect("/home")
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
                idUsuario: req.session.usuarioLogueado.idUsuarios,
                urlimagen: req.body.urlimagen,
                pieDeFoto: req.body.texto,
                fechaDePosteo: new Date(),
            };      
            //create
            db.Post.create(nuevoPost)    
            .then(function(){
                res.redirect("/home");
            })
        } else {
            res.redirect("/user/registracion")
        }        
    },
    comentario: function (req, res) {
            let comentario = {
                idusuario: req.session.usuarioLogueado.idUsuarios,
                idpost: req.body.idposts,
                fechaDeComentario: new Date(),
                comentario: req.body.comentario,
            };      
    
            db.Comentario.create(comentario)
    
            .then(function(){
                res.redirect("/home");
            })
        
            res.redirect("/user/registracion")
                
    },
    // Actualizar datos del posteo
    actualizar: function (req, res) {

        if (req.session.usuarioLogueado != undefined) {
            let postActualizado = {
                idUsuarios: req.session.usuarioLogueado.idUsuarios,
                urlimagen: req.body.urlimagen,
                pieDeFoto: req.body.pieDeFoto, 
            };   
            db.Post.update(postActualizado, {
                where: {
                    idposts: req.body.idposts
                }
            })
    
            .then(function(){
                res.redirect("/home/");
            })
        } else {
            res.render("/user/registracion")
        }        
    },
}

module.exports = postController;