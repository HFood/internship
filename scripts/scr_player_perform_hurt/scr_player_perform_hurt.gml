function scr_player_perform_hurt(argument0, argument1) //gml_Script_scr_player_perform_hurt
{
    scr_sound(sfx_hurt)
    scr_player_action_voice_pain()
    global.heat_meter -= 22.5
    global.damage_milestone++
    blink = 8
    hurt_time = 30
    global.combotimer -= (global.combotimer_full * 0.25)
    rolltotackle = 1
    tacklehit = 1
    tackle_airhit = 1
    tack0 = 0
    tack1 = 0
    tack2 = 0
    if audio_is_playing(suplexsfx)
        audio_stop_sound(suplexsfx)
    if instance_exists(tackle_particle)
        instance_destroy(tackle_particle)
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(roll_sfx)
        audio_stop_sound(roll_sfx)
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
    {
        sprite_index = spr_effect2
        image_xscale = 2
        image_yscale = 2
    }
    if (x > argument1.x)
        hsp = 7
    else
        hsp = -7
    vsp = -12
    if (argument0 == 1)
    {
        if (global.score >= 50)
        {
            repeat (5)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, -1000, obj_debris))
                {
                    sprite_index = choose(spr_collect2_1a, spr_collect2_2a, spr_collect2_3a, spr_collect2_6a, spr_collect2_5a)
                    image_speed = 0
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(2, -8)
                }
            }
        }
        else if (global.score >= 40)
        {
            repeat (4)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, -1000, obj_debris))
                {
                    sprite_index = choose(spr_collect2_1a, spr_collect2_2a, spr_collect2_3a, spr_collect2_6a, spr_collect2_5a)
                    image_speed = 0
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(2, -8)
                }
            }
        }
        else if (global.score >= 30)
        {
            repeat (3)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, -1000, obj_debris))
                {
                    sprite_index = choose(spr_collect2_1a, spr_collect2_2a, spr_collect2_3a, spr_collect2_6a, spr_collect2_5a)
                    image_speed = 0
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(2, -8)
                }
            }
        }
        else if (global.score >= 20)
        {
            repeat (2)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, -1000, obj_debris))
                {
                    sprite_index = choose(spr_collect2_1a, spr_collect2_2a, spr_collect2_3a, spr_collect2_6a, spr_collect2_5a)
                    image_speed = 0
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(2, -8)
                }
            }
        }
        else if (global.score >= 10)
        {
            repeat (1)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, -1000, obj_debris))
                {
                    sprite_index = choose(spr_collect2_1a, spr_collect2_2a, spr_collect2_3a, spr_collect2_6a, spr_collect2_5a)
                    image_speed = 0
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(2, -8)
                }
            }
        }
        global.score -= 50
    }
    image_index = 0
    if (obj_player.grounded == 0)
        sprite_index = spr_player_hurt_air
    else
        sprite_index = spr_player_hurt
    state = "hurt"
}

