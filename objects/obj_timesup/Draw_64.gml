draw_set_font(global.itfont)
shk_x = irandom_range(-2, 2)
shk_y = irandom_range(-2, 2)
draw_text_color((960 + shk_x), (1020 + shk_y), (("PRESS " + string(scr_keyname(global.key_grab))) + " FOR QUICK RESTART"), c_gray, c_gray, c_gray, c_gray, 1)
