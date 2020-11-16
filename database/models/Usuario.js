module.exports = (sequelize, DataTypes) => {

    let cols = {
        idUsuarios:{
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        nombre:{
            type: DataTypes.STRING
        },
        edad:{
            type: DataTypes.INTEGER
        },
        contrasenia:{
            type: DataTypes.STRING
        },
        email:{
            type:DataTypes.STRING
        },
        fotoPerfil:{
            type:DataTypes.STRING
        },
        pregSeguridad:{
            type:DataTypes.STRING
        },
        resSeguridad:{
            type:DataTypes.STRING
        }
    }


    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuario = sequelize.define("Usuario", cols, config);

    Usuario.associate = function (models){
        Usuario.hasMany(models.Post, {
            as: "postUsuario",
            foreignKey: "idUsuario"
        })

        Usuario.hasMany(models.Comentario, {
            as: "comentarioUsuario",
            foreignKey: "idusuario"
        })
    }


    return Usuario;
}