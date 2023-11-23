if (doit == 1 && (!instance_exists(fadeid)))
{
    scr_sound(sfx_door)
    fadeid = instance_create_depth(x, y, -10, obj_fade)
}
if instance_exists(fadeid)
{
    if (fadeid.yeah == 1)
    {
        obj_player.portalsecret = 1
        instance_destroy(fadeid)
        if ((!audio_is_playing(mus)) && global.escape == 0)
        {
            audio_group_stop_all(1)
            global.music = audio_play_sound(mus, 1, true)
        }
        if (insecret == 0)
            global.fun_meter_visible = 0
        else
            global.fun_meter_visible = 1
        if (global.level == "train")
        {
            if (insecret == 0)
                audio_stop_sound(global.trainsfx)
            else
                global.trainsfx = audio_play_sound(sfx_traintracks, 1, true)
        }
        ds_list_add(global.saveroom, id)
        room_goto(rm)
        with (instance_create_depth(x, y, -10, obj_fade))
        {
            yeah = 1
            yeah2 = 1
            alpha = 1
        }
    }
}
if (sprite_index == spr_secretportal_enterloop)
{
    image_angle += 12
    image_xscale -= 0.01
    image_xscale = max(image_xscale, 0)
    image_yscale = image_xscale
}
if (ghost_cd > 0)
    ghost_cd--
else
{
    with (instance_create_depth(x, y, 30, obj_ghostmove))
    {
        depth = 30
        plain = 1
        image_blend = 0xF04D7E
        sprite_index = other.sprite_index
        image_index = other.image_index
        image_xscale = other.image_xscale
        image_yscale = other.image_yscale
        image_angle = other.image_angle
        direction = irandom_range(1, 360)
        speed = 1
    }
    ghost_cd = 5
}
if (parc_time > 0)
    parc_time--
else
{
    repeat irandom_range(1, 3)
    {
        with (instance_create_depth(x, y, 21, obj_flameeffect))
        {
            depth = 21
            image_xscale = 1
            speed = 4
            sprite_index = spr_secretportal_particles
            image_index = irandom_range(0, 4)
        }
    }
    parc_time = irandom_range(5, 15)
}
