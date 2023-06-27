var colors = document.querySelectorAll(".color");
    
function applyColors(){
    for(var i=0; i<colors.lenght; i++) {
        colors[i].style.color = colors[i].innerText;
    }
}
