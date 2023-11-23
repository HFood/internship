if (blink == 1)
{
    gpu_set_fog(true, c_white, 0, 0)
    draw_sprite(sprite_index, image_index, x, y)
    gpu_set_fog(false, c_white, 0, 0)
}
else
    draw_sprite(sprite_index, image_index, x, y)
