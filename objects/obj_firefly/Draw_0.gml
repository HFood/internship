if (light_img < 3)
    light_img += 0.2
else
    light_img = 0
draw_sprite_ext(spr_firefly_light, light_img, x, y, 2, 2, 0, c_white, 0.25)
draw_self()
