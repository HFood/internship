global.coins++
scr_message("YOU GOT A COIN!")
scr_sound(sfx_collecttoppin)
with (instance_create_depth(x, y, 2, obj_effecttemporary))
    sprite_index = spr_sparkles
instance_destroy()
