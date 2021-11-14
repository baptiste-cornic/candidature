'use strict';

document.addEventListener('DOMContentLoaded', function (){
    form.addEventListener('submit', checkRegistration);
});

let form = document.querySelector('#registration');
let firstname = document.querySelector('#firstname');
let lastname = document.querySelector('#lastname');
let email = document.querySelector('#email');
let password = document.querySelector('#password');

// verification que les champs soient remlplis
function checkRegistration()
{
    if(firstname.value == "")
    {
        firstname.classList.add("red_border");
        event.preventDefault();
    }
    else{firstname.classList.remove("red_border");
    }

    if(lastname.value == "")
    {
        lastname.classList.add("red_border");
        event.preventDefault();
    }
    else{lastname.classList.remove("red_border");
    }

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
