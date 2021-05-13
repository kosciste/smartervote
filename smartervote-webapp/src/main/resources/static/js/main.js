/**
 * Open the navigation overlay.
 */
function openNav() {
    document.getElementById("smartervote-overlay").style.width = "100%";
}

/**
 * Close the navigation overlay.
 */
function closeNav() {
    document.getElementById("smartervote-overlay").style.width = "0%";
}

/**
 * Change the bars.
 */
function changeNav() {
    let bars = document.getElementById("responsive-menu-symbol").children;
    for (let i = 0; i < bars.length; i++) {
        if (bars[i].classList.contains("change-bar")) {
            bars[i].classList.remove("change-bar");
        } else {
            bars[i].classList.add("change-bar");
        }

    }
}

/**
 * Event handlers for the upvote ajax request.
 */
$(document).ready(function () {

    $(document).on("click", ".upvote", function () {
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
                $(".upvotes-" + id).html("Likes: " + data)
            },
            error: function () {
                window.alert("Der Upvote hat leider nicht funktioniert!")
            }
        });
    });

});