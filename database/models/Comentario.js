module.exports = (sequelize, DataTypes) => {

    let cols = {
        idcomentarios:{
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        comentario:{
            type: DataTypes.STRING
        },
        fechaDeComentario:{
            type: DataTypes.DATE
        },
        idpost:{
            type: DataTypes.INTEGER
        },
        idusuario:{
            type: DataTypes.INTEGER
        }
    }

    //  El objeto contiene todas las columnas que encontramos en la base de datos (workbench) junto con los tipos de datos de las mismas
    // sea STRING (texto) o DATE (fecha en formato datetime)


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentario = sequelize.define("Comentario", cols, config);
    // relaciones
    Comentario.associate = function (models){
        Comentario.belongsTo(models.Post, {
            as: "comentarios",
            foreignKey: "idpost"
        })

        Comentario.belongsTo(models.Usuario, {
            as: "comentarioUsuario",
            foreignKey: "idusuario"
        })
    }

    return Comentario;
}