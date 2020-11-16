//<%= post[i].comentarios.idUsuario %>
//<%= posts[i].postUsuario.nombre %>

let db = require('../database/models/index');
let op = db.Sequelize.Op;


let homeController = {

    //Se incluyen las dos asociaciones hechas en el modelo para poder imprimir en la vista los nombres de los usuarios
    // y los comentarios realizados en los posts.
    // Tambien, agregamos un "order" para que los podestos aparezcan de forma descendiente, de modo que aprece el ultimo primero,
    // el de Jhon Gotti siempre va a aprecer primero porqeu en la bse de datos le pusimos fecha en 2021

    home: function(req, res) {  
        db.Post.findAll(
            {include:[
                {association: "postUsuario"},
                {association: "comentario"}
            ], 
            
               order:[["fechaDePosteo","DESC"]]
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
        
        // El "where" se complementa con la base de datos, por ende, en la seccion nombre va a buscar dentro del campo "nombre"
        // en la base de datos lo que se haya explicitado en el buscador. Los porcentajes son para que busque 
        // palabras que contengan ese string dentro de la base.
        // El "op.or" habilita que se pueda buscar por nimbre Y por mail
        // El "op.like" habilita que busque el string especificado

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