let db = require('../database/models/index');
let op = db.Sequelize.Op;


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

        if (req.session.usuarioLogueado == req.body.idUsuarios) {
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
                idUsuario: req.session.usuarioLogueado.idUsuarios,
                urlimagen: req.body.urlimagen,
                pieDeFoto: req.body.texto,
                fechaDePosteo: new Date(),
            };      
    
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
                res.redirect("/post/detallePost/" + req.body.idposts);
            })
        } else {
            res.render("/user/registracion")
        }        
    },
}

module.exports = postController;