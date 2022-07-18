module.exports = (Sequelize, DataType) => {
    const alias = "User"

    const cols = {
        id: {
            primaryKey:true,
            autoIncrement:true,
            type: DataType.INTEGER
        },
        user_name: {
            type: DataType.STRING,
            notNull: false,
        },
        email: {
            type: DataType.STRING,
            notNull: false,
        },
        password: {
            type: DataType.STRING,
            notNull: false,
        },
        isAdmin: {
            type: DataType.INTEGER,
            notNull: false,
        }
    }

    const config = {
        timestamps: false,
        // tableName: "movies"
    }

    const User = Sequelize.define(alias, cols, config)

    return User;
}