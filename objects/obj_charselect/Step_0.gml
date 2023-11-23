if (global.developer_mode == 1)
{
    if (!instance_exists(dofade))
    {
        if keyboard_check_pressed(global.key_left)
        {
            scr_1sound(sfx_woosh2)
            select--
        }
        if keyboard_check_pressed(global.key_right)
        {
            scr_1sound(sfx_woosh2)
            select++
        }
    }
    if (keyboard_check_pressed(global.key_jump) && (!instance_exists(dofade)))
    {
        if (select == 3)
        {
            scr_1sound(sfx_vineboom)
            instance_create_depth(960, 540, -12, obj_chiknsad)
        }
        else
        {
            audio_stop_sound(sfx_pop)
            var _popsnd = audio_play_sound(sfx_pop, 1, false)
            audio_sound_pitch(_popsnd, 1.25)
            switch select
            {
                case 1:
                    global.character = "intern"
                    break
                case 2:
                    global.character = "backy"
                    break
                case 3:
                    global.character = "chiknnuggit"
                    break
            }

            dofade = instance_create_depth(x, y, -10, obj_fade)
        }
    }
}
else
{
    global.character = "intern"
    with (instance_create_depth(x, y, -10, obj_fade))
    {
        alpha = 1
        yeah2 = 1
    }
    global.level = "hub"
    instance_destroy(dofade)
    room_goto(rm_hub_floor1)
    instance_destroy()
}
if instance_exists(dofade)
{
    if (dofade.yeah == 1)
    {
        with (instance_create_depth(x, y, -10, obj_fade))
        {
            alpha = 1
            yeah2 = 1
        }
        global.level = "hub"
        instance_destroy(dofade)
        room_goto(rm_hub_floor1)
        instance_destroy()
    }
}
select = clamp(select, 1, 3)
