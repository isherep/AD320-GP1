//selecting submit button
var button = document.querySelector('.button-primary');

//adding new style to the button when mouse is over it
button.addEventListener('mouseover', changeButton);

//removing new style to the button when mouse is out   
button.addEventListener('mouseout',changeButtonBack);

//adds id attribute with a new style to button 
function changeButton(){
    button.setAttribute('id','changable');
    button.setAttribute("style","border: 2px ridge black;color: black;");   
}
//removes id attribute and makes button style to where it was
function changeButtonBack(){
    button.removeAttribute('id');
    button.style.color = "";
    button.style.border = "";
}