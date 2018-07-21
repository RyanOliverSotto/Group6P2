$(document).ready(function() {
    $("#addSubmit").on("click"), function() {
        var newBook = {
            location: $("#location").val(),
            title: $("#titleInput").val().trim(),
            author: $("#authorInput").val().trim(),
            genre: $("#genre").val()
        }

        console.log(newBook);

        var currentURL = window.location.origin;
        $.post(currentURL + "api/addBook", newBook, function(data) {
            console.log(data);
        })
    }

});

