/* This JS-Script is responsible for the action of the navigation
   @author: stefankoscica */

//Open when someone clicks on the span element
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

// Close when someone clicks on the "x" symbol inside the overlay
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}

function changeNav(){
  let bars = document.getElementById("menu-symbol").children;
  for(let i=0; i <bars.length; i++){
    if(bars[i].classList.contains("change-bar")){
      bars[i].classList.remove("change-bar");
    } else {
      bars[i].classList.add("change-bar");
    }
    
  }
}

$(document).ready(function() {

    $(document).on("click", ".upvote", function() {
        let id = $(this).attr("id")
        let ref = $(this)

        $.ajax({
            type: "POST",
            url: "/api/upvote-question",
            data: {
                id: id
            },
            success: function (data) {
                ref.attr("disabled", true)
                ref.html("Upvoted")
                $(".upvotes-" + id).html("Upvotes: " + data)
            },
            error: function () {
                window.alert("Der Upvote hat leider nicht funktioniert!")
            }
        });
    });

});

function askQuestion(){
  alert('Trying to askQuestion');
  $.ajax({
    type: 'POST',
    url:'/addQuestion',
    data:'Static Test question.',
    success: function(msg){
        alert('Danke für Ihre Frage!');
    }
});
}