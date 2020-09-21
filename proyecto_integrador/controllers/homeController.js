let homeController = {

    home: function(req, res) {
        res.render('home', { title: 'home' })
      
    },
    agregarPost: function (req, res) {
        res.render('agregarPost', {title: 'agregarPost'})
    },
    detallePost: function (req, res) {
     res.render('detallePost',{title:'detallePost' })   
    },
    resultadoBusqueda: function (req, res) {
     res.render('resultadoBusqueda',{title: 'resultadoBusqueda'})   
    },
    detalleUsuario: function (req,res){
     res.render('detalleUsuario', { title: 'detalleUsuario' });
          

    }
}

module.exports = homeController;