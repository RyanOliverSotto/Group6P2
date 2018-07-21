module.exports = function(sequelize, DataTypes) {
    var Genre = sequelize.define("Genre", {
      // Giving the Author model a name of type STRING
      genre: DataTypes.STRING
    },
    {timestamps: false}
);
  
    Genre.associate = function(models) {
      // Associating Genre with Books
      Genre.hasMany(models.Book);
    };
  
    return Genre;
  };
  