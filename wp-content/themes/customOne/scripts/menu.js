let isMenuOpen = false;
let menuList, menuButton, body;

document.addEventListener('DOMContentLoaded', () =>
{
    menuList = document.querySelector('.js-menu');
    menuButton = document.querySelector('.js-menu-button');
    body = document.querySelector('body');
    menuButton.addEventListener('click', toggleMenu);
});

function toggleMenu()
{
    //console.log("touch?!");
    isMenuOpen = !isMenuOpen;
    if(isMenuOpen)
    {
        menuButton.classList.add('mobile-menu-open');
        menuList.classList.add('menu-visible');
        body.classList.add('no-scroll');
    }
    else
    {
        menuButton.classList.remove('mobile-menu-open');
        menuList.classList.remove('menu-visible');
        body.classList.remove('no-scroll');
    }    
    menuButton.setAttribute('aria-expanded', isMenuOpen);
}