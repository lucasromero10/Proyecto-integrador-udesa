module.exports = (sequelize, DataTypes) => {

    let cols = {
        idComentario:{
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
        idPost:{
            type: DataTypes.INTEGER
        },
        idUsuario:{
            type: DataTypes.INTEGER
        }
    }


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentario = sequelize.define("Comentarios", cols, config);

    return Comentario;
}