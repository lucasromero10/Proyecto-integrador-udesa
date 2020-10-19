const { FOREIGNKEYS } = require("sequelize/types/lib/query-types");

module.exports = (sequelize, DataTypes) => {

    let cols = {
        idPost:{
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        idUsuario:{
            type: DataTypes.INTEGER
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


    let config = {
        tableName: "posts",
        timestamps: false
    }

    let Post = sequelize.define("Post", cols, config);

    return Post;
}