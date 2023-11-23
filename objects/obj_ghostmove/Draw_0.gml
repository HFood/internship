if (plain == 1)
{
    gpu_set_fog(true, image_blend, 0, 0)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    gpu_set_fog(false, c_white, 0, 0)
}
else
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
