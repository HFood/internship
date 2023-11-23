if (draw_gui == 0)
{
    draw_set_color(image_blend)
    draw_set_alpha(alpha)
    draw_rectangle(global.camera_x, global.camera_y, 1920, 1080, false)
    draw_set_color(c_white)
    draw_set_alpha(1)
}
