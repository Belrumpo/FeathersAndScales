function _init()
    x=64
    y=64
end

function _update()
    if (btn(0)) x-=1
    if (btn(1)) x+=1
    if (btn(2)) y-=1
    if (btn(3)) y+=1
end

function _draw()
    cls()
    pset(x,y,12)
end
