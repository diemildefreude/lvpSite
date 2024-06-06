const slides = [];
const minInterval = 1200;
const maxInterval = 5500;
const intervalRange = maxInterval - minInterval;
const minDur = 5000;
const maxDur = 8000;
const durRange = maxDur - minDur;
const minScale = 1.2;
const maxScale = 1.6;
const minTranslate = -20;
const maxTranslate = 70;
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
     this.isWide;
    }
}

document.addEventListener('DOMContentLoaded', async ()=>
{
    //console.log("dom content loaded");
    const s = Array.from(document.querySelectorAll('.fade-slide')); 
    const shuf = shuffle(s);

    const firstSlideObj = new Slide(shuf[0]);
    const slideObj = await loadImageLo(firstSlideObj);//synchronous                   
    //console.log("0 lo loaded. start spawns");
    slides.push(firstSlideObj);
    //slides[0].slide.classList.toggle('active', true);  
    setRandomSpawn();
    loadImageHi(slideObj);//.then( () => console.log("0 hi loaded"));//async    

    for(let i = 1; i < shuf.length; ++i)
    {
        const newSlideObj = new Slide(shuf[i]);
        loadImageLo(newSlideObj).then((slideObj) => //async
        {            
            //console.log(i + " lo loaded");
            slides.push(slideObj);            
            loadImageHi(slideObj);//.then( () => console.log(i + " hi loaded"));//async
        }); 
    }    
});

function loadImageLo(slideObj)
{
    return new Promise((resolve) =>
    {
        const imgLo = new Image();
        const imgRef = slideObj.slide.querySelector("img");
        // console.log(imgLo);
        imgLo.src = imgRef.dataset.src;
        //console.log(imgRef.dataset.src);
        imgLo.onload = () => 
        { 
            imgRef.src = imgLo.src; 
            slideObj.isWide = imgLo.width > imgLo.height;
            slideObj.slide.classList.toggle("wide", slideObj.isWide);
            resolve(slideObj); 
        };
        
    });
}

function loadImageHi(slideObj)
{
    return new Promise((resolve) =>
    {
        const imgHi = new Image();
        imgHi.src = slideObj.slide.querySelector("span").innerHTML;
        //console.log("span: " + imgHi.src);
        imgHi.onload = () => {slideObj.slide.querySelector("img").src = imgHi.src; resolve(); };
    });
}

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
        //console.log("no slides");
        return;
    }
    mostRecentSlide = ++mostRecentSlide % slides.length;
    
    const index = mostRecentSlide;
    if(slides[index].isActive)
    {
        //console.log("skip active slide " + index);
        return;
    }
    const fadeDur = Math.random() * durRange + minDur;
    const ranScale = Math.pow(Math.random(),1);
    //const translateMult = ranScale * translateRange + minTranslate;
    const scaleMult = (1.0 - ranScale) * scaleRange + minScale;

    const xStart = Math.floor((Math.random() * translateRange + minTranslate) * -1) + "%";
    const xEnd = Math.floor((Math.random() * translateRange + minTranslate) * -1) + "%";
    const yStart = Math.floor((Math.random() * translateRange + minTranslate) * -1) + "%";
    const yEnd = Math.floor((Math.random() * translateRange + minTranslate) * -1) + "%";

    //console.log(xStart, yStart, "->", xEnd, yEnd);
    slides[index].slide.style.setProperty('--fade-duration', Math.floor(fadeDur / 1000) + 's');
    slides[index].slide.style.setProperty('--fade-translate-x-start', xStart);
    slides[index].slide.style.setProperty('--fade-translate-y-start', yStart);
    slides[index].slide.style.setProperty('--fade-translate-x-end', xEnd);
    slides[index].slide.style.setProperty('--fade-translate-y-end', yEnd);
    slides[index].slide.style.setProperty('--fade-scale', (scaleMult * scaleRange + minScale));
    slides[index].slide.style.setProperty('--fade-scale-mobile', (2 * scaleMult * scaleRange + minScale));
    
    slides[index].slide.classList.toggle('active', true);  
    slides[index].isActive = true;     
    //console.log("activate slide " + index);
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