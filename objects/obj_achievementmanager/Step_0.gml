ini_open(global.savedata_ini)
if (keyboard_check_pressed(vk_f6) && ini_read_real("achievements", "test", 0) == 0)
{
    scr_1sound(sfx_collecttoppin)
    ini_write_real("achievements", "test", 1)
    ach_test = 1
    with (instance_create_depth(0, 0, -1005, obj_achievement_popup))
        sprite_index = spr_achievement_test
}
if keyboard_check_pressed(vk_f10)
    ini_write_real("achievements", "test", 0)
ini_close()
