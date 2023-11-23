repeat (sprite_width / 32)
{
    draw_sprite_ext(spr_water, img_index, ((bbox_left + 16) + xplus), (bbox_top + 16), 1, 1, 0, c_white, image_alpha)
    repeat ((sprite_height / 32) - 1)
    {
        draw_sprite_ext(spr_water_body, image_index, ((bbox_left + 16) + xplus), ((bbox_top + 48) + yplus), 1, 1, 0, c_white, image_alpha)
        yplus += 32
    }
    yplus = 0
    xplus += 32
}
xplus = 0
if (img_index < (sprite_get_number(spr_water) - 1))
    img_index += 0.3
else
    img_index = 0
