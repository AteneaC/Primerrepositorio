function ejemplo(elemento) {
    console.log("elemento clickeado", elemento);
}
//con esta funcion se activará un alertque mostrará una ventana de diálogo que muestra cualquier mensaje que le proporcionemos.
function turnOff(element) {
    element.innerText = "Off";
}
//con esta funcion se cambia un elemento(texto)
function hide(element) {
    element.remove();
}
//con esta funcion se remueve el boton