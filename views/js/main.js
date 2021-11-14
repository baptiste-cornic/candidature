'use strict';

document.addEventListener('DOMContentLoaded', function (){
    section.addEventListener('click', test);
 
});

let hidden = document.querySelector('.hidden');

let section = document.querySelector('section');

function test(e)
{
    // me donne le data index de la ou je clic et recupere la div hidden de celle-ci
    
   let index = e.target.getAttribute('data-index');     
   let application = document.querySelector(`[data-index="${index}"]`);
   let hidden = application.querySelector('.hidden');

    display_div(hidden)
}

// affiche ou non la div avec les informations
function display_div(hidden){
    hidden.style.display == "flex"? hidden.style.display = "none": hidden.style.display = "flex"; 
}


