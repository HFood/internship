scr_silh_start()
if (state == "taunt")
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, (x + fly_x), (y + fly_y), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
scr_silh_end()
