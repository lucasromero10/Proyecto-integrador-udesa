module.exports = (sequelize, DataTypes) => {

    let cols = {
        idposts:{
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        idUsuario:{
            type: DataTypes.INTEGER,
        },
        urlimagen:{
            type: DataTypes.STRING
        },
        pieDeFoto:{
            type: DataTypes.STRING
        },
        fechaDePosteo:{
            type: DataTypes.DATE
        }
    }

    //  El objeto contiene todas las columnas que encontramos en la base de datos (workbench) junto con los tipos de datos de las mismas
    // sea STRING (texto) o DATE (fecha en formato datetime)

    let config = {
        tableName: "posts",
        timestamps: false
    }
     // relaciones
    let Post = sequelize.define("Post", cols, config);

    Post.associate = function (models){
        Post.belongsTo(models.Usuario, {
            as: "postUsuario",
            foreignKey: "idUsuario"
        })

        Post.hasMany(models.Comentario, {
            as: "comentario",
            foreignKey: "idpost"
        })
    }

    return Post;
}