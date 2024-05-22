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
//let body; //body is already declared in menu.js

document.addEventListener('DOMContentLoaded', () => 
{
    images = document.querySelectorAll('.main-image-container');
    zoomImage = document.querySelector('.zoom-image');
    //body = document.querySelector('body');
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
            press(e);
        });
        i.addEventListener('pointerup', e =>
        {
            const upPos = new Point(e.x, e.y);
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
        press(e);
    });
    zoomImage.addEventListener('pointerup', e => 
    {
        const upPos = new Point(e.x, e.y);
        if(isPressed && (pressedPos.distanceTo(upPos) < dragThreshold))
        {
            zoomOut();
            isPressed = false;
        }
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
function press(e)
{
    pressedPos = new Point(e.x, e.y);
    isPressed = true; 
}
function zoomIn(i)
{
    const img = i.querySelector('img');
    zoomImage.src = img.src;
    zoomImage.alt = img.alt;
    isZoomed = true;
    zoomImage.classList.toggle('visible', true);
    body.classList.toggle('no-scroll', true);
    //console.log("zoom in");
}
function zoomOut()
{
    isZoomed = false;
    zoomImage.classList.toggle('visible', false);
    body.classList.toggle('no-scroll', false);
    //console.log("zoom out");
}