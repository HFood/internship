repeat (sprite_height / 32)
{
    draw_sprite(sprite_index, 0, x, ((bbox_top + 16) + yplus))
    yplus += 32
}
yplus = 0
