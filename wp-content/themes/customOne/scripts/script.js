// MOUSE.JS///////////////////////////////////////
let cursor = [];

document.addEventListener("DOMContentLoaded", () =>
{
    cursor = document.querySelectorAll(".cursor");
    window.addEventListener("pointermove", positionCursor);
});

function positionCursor(e)
{
    if(!cursor || cursor.length < 1 || e.pointerType != "mouse")
    {
        return;
    }
    const mouseX = e.clientX;
    const mouseY = e.clientY;
    cursor.forEach( (c)=>{
        c.style.top = mouseY + 'px';
        c.style.left = mouseX + 'px';
    });
}
// MENU.JS////////////////////////////////////////
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
//HEADER.JS//////////////////////////////////////////
let didScroll = false;
let lastScrollTop = 0;
const delta = 5;
let header, banner, nav;
//added behavior for home page banner
const [hr,hg,hb] = [255,255,255]; //header color
const [tr,tg,tb] = [0, 128, 128]; //text
const [nr,ng,nb,na] = [255, 221, 223, 0.8]; //mobile nav color
                            //same as background but transparent
const fadeSpeedRange = 0.2;
const fadeSpeedMin = 0.2;
const maxScrollDist = 300;

window.addEventListener('DOMContentLoaded', ()=>
{
    lastScrollTop = this.scrollY;
    header = document.querySelector('header');    
    banner = document.querySelector('.banner-container');
    nav = document.querySelector('nav');

    window.addEventListener("scroll", ()=> didScroll = true);
    setInterval(()=>
    {
        if(didScroll)
        {
            didScroll = false;
            hasScrolled();
        }
        }, 150);
});

function hasScrolled()
{
    const st = this.scrollY;
    const diff = Math.abs(lastScrollTop - st);
    //console.log(diff);
    if(diff <= delta)
    {
        return;
    }
    //console.log("scrollY: " + st + ", lastScroll: " + lastScrollTop + ", navbarHeight: " + header.offsetHeight);
    if(st > lastScrollTop && st > header.offsetHeight)
    {
        if(!banner || st > banner.offsetHeight)
        {
            header.classList.toggle("header-up", true);
        }        
    }
    else 
    {   
        if(st + window.innerHeight < document.documentElement.scrollHeight)
        {
            header.classList.toggle("header-up", false);
        }
    }
    let [tRed, tGreen, tBlue, tAlpha] = [0,0,0,0];
    let [hRed, hGreen, hBlue, hAlpha] = [0,0,0,0];
    let [nRed, nGreen, nBlue, nAlpha] = [0,0,0,0];
    let threshold = banner ? banner.offsetHeight * 0.9 : header.offsetHeight;
    if(st > threshold)
    {
        [tRed, tGreen, tBlue, tAlpha] = [tr, tg, tb, 1.0];
        [hRed, hGreen, hBlue, hAlpha] = [hr, hg, hb, 1.0];
        [nRed, nGreen, nBlue, nAlpha] = [hr, hg, hb, na];
        if(banner)
        {//this restores the pointer cursor when not over the banner
            header.classList.toggle("hide-cursor", false);
        }
    }
    else
    {
        [tRed, tGreen, tBlue, tAlpha] = [0, 0, 0, 1.0];
        [hRed, hGreen, hBlue, hAlpha] = [hr, hg, hb, 0.0];
        [nRed, nGreen, nBlue, nAlpha] = [nr, ng, nb, na];
        if(banner)
        {
            header.classList.toggle("hide-cursor", true);
        }
    }    
    header.style.setProperty('--header-bg-color',`rgba(${hRed}, ${hGreen}, ${hBlue}, ${hAlpha})`);
    nav.style.setProperty('--mobile-menu-color', `rgba(${nRed}, ${nGreen}, ${nBlue}, ${nAlpha})`);
    nav.style.setProperty('--header-text-color',`rgba(${tRed}, ${tGreen}, ${tBlue}, ${tAlpha})`);
    //this code gradually fades out the header from the top to the bottom of the banner,
    //but I decided that was dumb:
    //------------
    //let range = maxScrollDist - delta;
    //const dur = ((Math.min(maxScrollDist,diff) - delta) / range) * fadeSpeedRange + fadeSpeedMin;
    //console.log(dur);
    // header.style.setProperty('--header-fade-dur', dur + 's');
    // let a;
    // if(banner && st < banner.offsetHeight)
    // {            
    //     a = Math.min(1, st / banner.offsetHeight );
    //     header.style.setProperty('--header-bg-color',`rgba(${br}, ${bg}, ${bb}, ${a})`);
    // }
    // else
    // {
    //     a = Math.min(1, st / (header.offsetHeight * 0.5) );
    //     header.style.setProperty('--header-bg-color',`rgba(${br}, ${bg}, ${bb}, ${a})`);
        
    // }
    // const [r,g,b] = [tr * a, tg * a, tb * a].map(Math.round);
    // for(let i=0; i < menuText.length; ++i)
    // {
    //     menuText[i].style.setProperty('--header-text-color',`rgba(${r}, ${g}, ${b}, 1.0)`);
    // }

    lastScrollTop = st;
}
//ZOOM.JS//////////////////////////////////////////
class Point
{
    constructor(x,y)
    {
        this.x = x;
        this.y = y;
        this.distanceTo = (point) =>
        {
            const d = Math.sqrt((Math.pow(point.x-this.x,2))+(Math.pow(point.y-this.y,2)));
            return d;
        }
    }
}

let images = [];
let zoomImage;
let isPressed = false;
let isZoomed = false;
let pressedPos = new Point(0,0);
const dragThreshold = 20;

document.addEventListener('DOMContentLoaded', () => 
{
    images = document.querySelectorAll('.main-image-container');
    zoomImage = document.querySelector('.zoom-image');
    if(zoomImage)
    {        
        addImageListeners();
    }
});

function addImageListeners()
{
    images.forEach((i) =>
    {
        i.addEventListener('pointerdown', e => 
        {
            pressedPos = new Point(e.x, e.y);
            isPressed = true;    
        });
        i.addEventListener('pointerup', e =>
        {
            const upPos = new Point(e.x, e.y);
            //console.log('pointer up ' + isPressed + " " + pressedPos.distanceTo(upPos));
            if(isPressed && (pressedPos.distanceTo(upPos) < dragThreshold))
            {
                zoomIn(i);
                isPressed = false;
            }
        });
        i.addEventListener('keydown', (e) => 
        {
            if(e.key === 'Enter' && !isZoomed)
            {
                zoomIn(i);
            }
            else if(e.key === 'Enter' && isZoomed)
            {
                zoomOut();
            }
        });
    });

    zoomImage.addEventListener('pointerdown', e =>
    {
        zoomOut();
    });

    window.addEventListener('keydown', e => 
    {
        if(e.key === 'Escape' && isZoomed)
        {
            zoomOut();
        }
    }
    );
}
function zoomIn(i)
{
    const img = i.querySelector('img');
    zoomImage.src = img.src;
    zoomImage.alt = img.alt;
    isZoomed = true;
    zoomImage.classList.toggle('visible', true);
}
function zoomOut()
{
    isZoomed = false;
    zoomImage.classList.toggle('visible', false);
}
//BANNER.JS////////////////////////////////////////////
const slides = [];
const minInterval = 1500;
const maxInterval = 4500;
const intervalRange = maxInterval - minInterval;
const minDur = 5000;
const maxDur = 8000;
const durRange = maxDur - minDur;
const minScale = 1.1;
const maxScale = 1.6;
const minTranslate = 50;
const maxTranslate = 85;
const translateRange = maxTranslate - minTranslate;
const scaleRange = maxScale - minScale;
let mostRecentSlide = -1;

class Slide
{
    constructor(s)
    {
     this.slide = s;
     this.isActive = false;
     this.timeout;
    }
}

document.addEventListener('DOMContentLoaded', ()=>
{
    const s = Array.from(document.querySelectorAll('.fade-slide')); 
    const shuf = shuffle(s);

    for(let i = 0; i < shuf.length; ++i)
    {
        slides.push(new Slide(shuf[i]));
    }
    if(!slides || slides.length < 1)
    {
        return;
    }
    const img = new Image();
    img.src = slides[0].slide.querySelector("img").src;
    img.onload = () => 
    {        
        setRandomSpawn();
    };
});

function setRandomSpawn()
{
    const time = Math.random() * intervalRange + minInterval;
    toggleActiveSlide();
    setTimeout(setRandomSpawn, time);
}

function shuffle(a)
{
    for (let i = a.length - 1; i > 0; i--)
    {
        const j = Math.floor(Math.random() * (i + 1));
        [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
}

function toggleActiveSlide()
{
    if(slides.length == 0)
    {
        return;
    }
    mostRecentSlide = ++mostRecentSlide % slides.length;
    
    const index = mostRecentSlide;
    const fadeDur = Math.random() * durRange + minDur;
    const ranScale = Math.pow(Math.random(),2);
    const translateMult = ranScale * translateRange + minTranslate;
    const scaleMult = (1.0 - ranScale) * scaleRange + minScale;
    slides[index].slide.style.setProperty('--fade-duration', Math.floor(fadeDur / 1000) + 's');
    slides[index].slide.style.setProperty('--fade-translate-x-start', (Math.random() * -1 * translateMult) + 0 + "%");
    slides[index].slide.style.setProperty('--fade-translate-y-start', (Math.random() * -1 * translateMult) + 0 + "%");
    slides[index].slide.style.setProperty('--fade-translate-x-end', (Math.random() * -1 * translateMult) + 0 + "%");
    slides[index].slide.style.setProperty('--fade-translate-y-end', (Math.random() * -1 * translateMult) + 0 + "%");
    slides[index].slide.style.setProperty('--fade-scale', (scaleMult * scaleRange + minScale));
    slides[index].slide.style.setProperty('--fade-scale-mobile', (2 * scaleMult * scaleRange + minScale));
    
    slides[index].slide.classList.toggle('active', true);  
    slides[index].isActive = true;     

    slides[index].timeout = setTimeout(()=>{
        slides[index].slide.classList.toggle('clickable', true);
    }, fadeDur * 0.15);

    slides[index].timeout = setTimeout(()=>{
        slides[index].slide.classList.toggle('clickable', false);
    }, fadeDur * 0.6);

    slides[index].timeout = setTimeout(()=>{ 
        slides[index].slide.classList.toggle('active', false);
        slides[index].isActive = false;   
    }, fadeDur);    
}