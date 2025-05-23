--map code
function map_setup()
    --map tile settings
    wall=0
    grain=1
    door=2
    anim1=3
    anim2=4
    lose=6
    win=7
end

function draw_map()
    map(0,0,0,0,128,64)
end

function is_tile(tile_type,x,y)
    tile=mget(x,y)
    has_flag=fget(tile,tile_type)
    return has_flag
end

function can_move(x,y)
    return not is_tile(wall,x,y)
end