if (global.key == 0 && other.state != "ghostcheckpoint")
{
    global.combotimer = global.combotimer_full
    instance_create_depth(x, (y + 16), 10, obj_effecttemporary)
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
    {
        image_xscale = 2
        image_yscale = 2
        sprite_index = spr_sparkles
    }
    scr_message("YOU GOT THE KEY!!")
    scr_sound(sfx_collecttoppin)
    instance_create_depth(x, y, 3, obj_keybuddy)
    global.key = 1
    instance_destroy()
}
