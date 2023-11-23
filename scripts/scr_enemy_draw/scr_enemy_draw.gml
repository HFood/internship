function scr_enemy_draw() //gml_Script_scr_enemy_draw
{
    if (blink > 0)
    {
        gpu_set_fog(true, c_white, 0, 0)
        draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale * stunxsc), (image_yscale * stunysc), image_angle, image_blend, image_alpha)
        gpu_set_fog(false, c_white, 0, 0)
    }
    else
    {
        scr_silh_start()
        draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale * stunxsc), (image_yscale * stunysc), image_angle, image_blend, image_alpha)
        scr_silh_end()
    }
}

