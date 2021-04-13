/* Open when someone clicks on the span element */
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

/* Close when someone clicks on the "x" symbol inside the overlay */
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
