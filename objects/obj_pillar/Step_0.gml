if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))
{
    if (obj_player.spinning == 1 || obj_player.grabbing == 1)
    {
        if (obj_player.x < x && obj_player.image_xscale == 1)
            deathside = 1
        else if (obj_player.image_xscale == -1)
            deathside = -1
        else
            deathside = 1
        hp--
    }
    else if ((obj_player.state == "tackle1" || obj_player.state == "tackle2" || obj_player.state == "superjump_kick" || obj_player.state == "superjump" || obj_player.state == "sodaride" || obj_player.state == "jetpack_run" || obj_player.state == "jetpack_dash" || (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll")) && ((obj_player.x < x && obj_player.image_xscale == 1) || (obj_player.x > x && obj_player.image_xscale == -1)))
    {
        if (obj_player.x < x && obj_player.image_xscale == 1)
            deathside = 1
        else if (obj_player.image_xscale == -1)
            deathside = -1
        else
            deathside = 1
        hp--
    }
}
if (hp < 1)
{
    scr_player_action_voice_rushhour()
    with (obj_scorekeeper)
    {
        escape_timer_scale_hold = 20
        escape_timer_scale = 4
    }
    with (instance_create_depth(global.camx, global.camy, 2, obj_fade))
    {
        yeah = 1
        yeah2 = 1
        alpha = 1
        image_blend = c_white
    }
    global.combotimer = global.combotimer_full
    audio_group_stop_all(1)
    global.music = audio_play_sound(mu_rushhour, 1, false)
    if (global.escape == 0)
    {
        switch global.level
        {
            case "rooftop":
                global.exittimer_min = 2
                global.exittimer_sec = 10
                global.exittimer_ms = 60
                break
            case "ancient":
                global.exittimer_min = 3
                global.exittimer_sec = 10
                global.exittimer_ms = 60
                break
            case "cave":
                global.exittimer_min = 4
                global.exittimer_sec = 10
                global.exittimer_ms = 60
                break
            case "resort":
                global.exittimer_min = 2
                global.exittimer_sec = 50
                global.exittimer_ms = 60
                break
            case "urban":
                global.exittimer_min = 4
                global.exittimer_sec = 10
                global.exittimer_ms = 60
                break
            case "crateburg":
                global.exittimer_min = 2
                global.exittimer_sec = 0
                global.exittimer_ms = 60
                break
            case "freezer":
                global.exittimer_min = 3
                global.exittimer_sec = 30
                global.exittimer_ms = 60
                break
            case "circus":
                global.exittimer_min = 4
                global.exittimer_sec = 20
                global.exittimer_ms = 60
                break
            case "train":
                global.exittimer_min = 2
                global.exittimer_sec = 0
                global.exittimer_ms = 60
                break
            default:
                global.exittimer_min = 5
                global.exittimer_sec = 0
                global.exittimer_ms = 60
                break
        }

        instance_create_depth(x, y, -1, obj_escapesign)
        global.escape = 1
    }
    global.trainescape = 0
    scr_basheffect()
    scr_sound(sfx_hit)
    with (instance_create_depth(x, y, -1000, obj_debris))
    {
        particles = 1
        hsp = (14 * other.deathside)
        image_xscale = (-other.deathside)
        vsp = -12
        sprite_index = spr_pillarnerd_dead
    }
    instance_destroy()
}
