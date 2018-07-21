var path = require("path");

module.exports = function(app) {

    app.get("/addbook", function (req, res) {
        res.sendFile(path.join(__dirname + '/../public/addabook.html'));
    });
    app.get("/pickabook", function (req, res) {
        res.sendFile(path.join(__dirname + '/../public/pickabook.html'));
    });
    app.get("/", function(req, res){
        res.sendFile(path.join(__dirname + '/../public/index.html'));
    });
};