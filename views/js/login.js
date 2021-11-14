'use strict';

document.addEventListener('DOMContentLoaded', function (){
    form.addEventListener('submit', checkLogin);
  
});

let form = document.querySelector('#login_form');
let email = document.querySelector('#email');
let password = document.querySelector('#password');

// verification que les champs soient remlplis
function checkLogin()
{
    if(email.value == "")
    {
        email.classList.add("red_border");
        event.preventDefault();
    }
    else{email.classList.remove("red_border");
    }

    if(password.value == "")
    {
        password.classList.add("red_border");
        event.preventDefault();
    }
    else{password.classList.remove("red_border");
    }
}