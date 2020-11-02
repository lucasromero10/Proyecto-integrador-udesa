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
        }
    }


    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuario = sequelize.define("Usuario", cols, config);

    return Usuario;
}