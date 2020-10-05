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
        fechaDeNacimiento:{
            type: DataTypes.DATE
        },
        edad:{
            type: DataTypes.INTEGER
        }
    }


    let config = {
        tableName: "usuarios",
        timestamps: false
    }

    let Usuario = sequelize.define("Usuarios", cols, config);

    return Usuario;
}