$(document).ready(function() {
    var arrayId = [];
    // Capture the form inputs
     $("#fetch").on("click", function (event) {
        event.preventDefault();
    
        console.log ("Location " + $("#location").val());
        console.log ("Genre " + $("#genre").val());
    
        var searchObj = {
            kioskid: $("#location").val(),
            genre: $("#genre").val()
        }
        
        var currentURL = window.location.origin;
        $.get(currentURL + "/api/catalog/books" , searchObj, function(data) {
            
            $("#imgSection").empty();
            $("#imgSelect").empty();
            
            for (var i = 0; i < data.length; i++) { 
                var bookImg = "https://images-na.ssl-images-amazon.com/images/I/91GQ%2BOWqgHL._SY355_.jpg";
                if (data[i].imgurl == null){
                    data[i].imgurl = bookImg;
                }
                else{
                    bookImg = data[i].imgurl
                }

                var bookDiv = $("<div>");
                var bookImg = "<img class='bookImg' value='" + i + "' src=" + bookImg + " id='" + data[i].id + "' alt = 'book'>";
                bookDiv.append(bookImg);
                $("#imgSection").prepend(bookImg);
                //console.log(`Data ${data}`);
            }

            $(".bookImg").on("click", function() {
                //console.log($(this).attr("value"));

                if ($(this).hasClass("selected"))
                 {
                    $(this).removeClass("selected");
                    $("#imgSection").prepend($(this));
                } 
                else 
                {
                    $(this).addClass("selected");
                    $("#imgSelect").prepend($(this));
                    
                }
                /*console.log("ID: " + $(this).attr("id"));
                $(".selected").each(function(){
                    console.clear();
                    console.log("ID: " + $(this).attr('id'));
                    
                });*/
            });

            $("#delete").on("click",function(){
                //event.preventDefault();
                var currentURL = window.location.origin;
                $(".selected").each(function(){
                    //console.log("ID: " + $(this).attr('id'));
                    var id = $(this).attr('id');              
                    console.log(`ID ${id}`);
                    $.ajax({
                        method: "DELETE",
                        url: "/api/pickbooks/" + id
                      })
                        .then(function() {
                          console.log("It Worked!");
                         //$(this).attr('id').remove();
                        });

                  
                    //$.post(currentURL + "api/delete",id, function(data) {
                    //console.log(data);
                })
                $("#imgSelect").empty();

                
            });

        });
     }); //END SUBMIT ON CLICK
    }); //END DOCUMENT READY

