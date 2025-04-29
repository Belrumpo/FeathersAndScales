function _init()
    map_setup()
    make_player()
end

function _update()
    move_player()
end

function _draw()
    cls()
    draw_map()
    draw_player()
end