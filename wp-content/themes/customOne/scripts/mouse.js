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
        //console.log(c);
    });
}