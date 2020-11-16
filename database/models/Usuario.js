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
        },
        fechaDeNacimiento:{
            type:DataTypes.DATE
        }
    }


    //  El objeto contiene todas las columnas que encontramos en la base de datos (workbench) junto con los tipos de datos de las mismas
    // sea STRING (texto) o DATE (fecha en formato datetime)

    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuario = sequelize.define("Usuario", cols, config);
    // relaciones
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