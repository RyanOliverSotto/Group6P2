module.exports = function (sequelize, DataTypes) {
    var Book = sequelize.define("Book", {
        author: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                len: [1]
            }
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false,
            validate: {
                len: [1]
            }
        },

        imgurl: {
            type: DataTypes.STRING,
            allowNull: true
        },
        sku: {
            type: DataTypes.STRING,
            allowNull: true
        }
    },
        {
            timestamps: false
        });

    Book.associate = function (models) {
        //Each book will have a foreign key with GENRE ID
        Book.belongsTo(models.Genre, {
            foreignKey: {
                allowNull: false
            }
        });
    };
    Book.associate = function (models) {
        //Each book will have a foreign key with KIOSK ID
        Book.belongsTo(models.Kiosk, {
            foreignKey: {
                allowNull: false
            }
        });
    };
    return Book;
};