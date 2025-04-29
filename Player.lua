--player code and stuff hehe

function make_player()
    p={}
    p.x=6
    p.y=5
    p.sprite=1
    p.idle={1,39}
    p.grain=0
end

function draw_player()
    spr(p.sprite,p.x*8,p.y*8,2,2)
    --spr(spr_index, player.x, player.y, 2, 2, flip_x, false)
end

function move_player()
    newx=p.x
    newy=p.y
    if (btnp(0)) newx-=1
    if (btnp(1)) newx+=1
    if (btnp(2)) newy-=1
    if (btnp(3)) newy+=1

    if (can_move(newx,newy)) then
        p.x=mid(0,newx,127)
        p.y=mid(0,newy,63)
    else
        sfx(0)
    end
end