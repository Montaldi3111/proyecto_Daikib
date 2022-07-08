module.exports = (Sequelize, DataType) => {
    const alias = "Genre"

    const cols = {
        id: {
            primaryKey:true,
            autoIncrement:false,
            type: DataType.INTEGER
        },
        name: {
            type: DataType.STRING,
            notNull: false,
    }
}

    const config = {
        timestamps: false,
        // tableName: "genre"
    }

    const Genre = Sequelize.define(alias, cols, config)

         // hasMany = tiene varias, establezco la relacion de la tabla de peliculas con la de generos
         Genre.associate = (models) => {
            Genre.hasMany(models.Movie, {
              as: "movie",
              foreignKey: "genre_id",
            });
          };


    return Genre;
}