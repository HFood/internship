repeat (sprite_width / 32)
{
    draw_sprite(sprite_index, 0, ((bbox_left + 16) + xplus), y)
    xplus += 32
}
xplus = 0
