module.exports = (Sequelize, DataType) => {
    const alias = "Movie"

    const cols = {
        id: {
            primaryKey:true,
            autoIncrement:false,
            type: DataType.INTEGER
        },
        name: {
            type: DataType.STRING,
            notNull: false,
        },
        rating: {
            type: DataType.DECIMAL(3,1),
            notNull: true,
        },
        img: {
            type: DataType.STRING,
            notNull: false,
        },
        genre_id: {
            type: DataType.INTEGER,
            notNull: false,
        },
        description: {
            type: DataType.STRING,
            notNull:false
        }
    }

    const config = {
        timestamps: false,
        // tableName: "movies"
    }

    const Movie = Sequelize.define(alias, cols, config)
    return Movie;
}