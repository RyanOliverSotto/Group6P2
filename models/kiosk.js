module.exports = function(sequelize, DataTypes) {
    var Kiosk = sequelize.define("Kiosk", {
      // Giving the Author model a name of type STRING
      kiosk: DataTypes.STRING
    },
    {
        timestamps: false
    }
);
    Kiosk.associate = function(models) {
      // Associating Kiosk with Books
      Kiosk.hasMany(models.Book);
    };
    return Kiosk;
  };
  