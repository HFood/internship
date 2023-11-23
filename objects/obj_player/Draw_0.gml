if (hitfreeze > 0)
    image_speed = 0
if (blink > 0)
{
    gpu_set_fog(true, c_white, 0, 0)
    if (state == "enterportal" || state == "outterportal")
        draw_sprite_ext(sprite_index, image_index, x, y, portal_scale, portal_scale, image_angle, image_blend, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, x, y, xface, image_yscale, image_angle, image_blend, image_alpha)
    gpu_set_fog(false, c_white, 0, 0)
}
else
{
    scr_silh_start()
    if (state == "enterportal" || state == "outterportal")
        draw_sprite_ext(sprite_index, image_index, x, y, portal_scale, portal_scale, image_angle, image_blend, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, x, y, xface, image_yscale, image_angle, image_blend, image_alpha)
    scr_silh_end()
}
