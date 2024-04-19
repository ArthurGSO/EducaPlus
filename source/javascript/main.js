let menu = document.querySelector('#menu-btn');
let navegation = document.querySelector('.navegation');

menu.onclick = () =>{
    menu.classList.toggle('fa-times');
    navegation.classList.toggle('active');
}

