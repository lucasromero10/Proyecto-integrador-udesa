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


    let config = {
        tableName: "comentarios",
        timestamps: false
    }

    let Comentario = sequelize.define("Comentario", cols, config);

    return Comentario;
}