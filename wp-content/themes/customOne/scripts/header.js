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