if instance_exists(targ)
{
    if (targ.object_index != obj_cocobomb && targ.hitfreeze <= 0)
    {
        if (targ.object_index == obj_olive && targ.state == "normal")
        {
            if instance_exists(targ)
            {
                if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal" && other.state != "ghostcheckpoint" && other.state != "onfire")
                {
                    with (other)
                        scr_player_perform_hurt(1, other.id)
                }
            }
        }
        else if (targ.stun_delay == 0 && targ.state != "deathtackle" && other.state != "bodyslam" && other.state != "ghost" && other.state != "tackleturn" && other.state != "tackle1" && other.state != "tackle2" && other.state != "wallrun" && other.state != "walljump" && other.state != "tumble" && other.state != "cheesed" && other.state != "superjump_kick" && other.state != "superjumpprep" && other.state != "superjump" && other.state != "jetpack_dash" && other.state != "jetpack_run" && other.state != "snowball" && other.state != "sodaride" && other.state != "crouchslide" && other.state != "ghostcheckpoint" && other.state != "onfire" && other.state != "slip")
        {
            with (other)
            {
                if (state == "uppunch")
                    state = "normal"
                if (state == "hurt" && hurt_time == 0)
                {
                    invincibility = 45
                    state = "normal"
                }
                if (state == "jetpack_wallhit")
                    state = "normal"
                obj_player.longfall_time = 60
                jumpspr = spr_intern_jump_grab
                stomp = 1
                if key_jump_hold
                    vsp = -12
                else
                    vsp = -8
            }
            with (targ)
            {
                scr_sound(sfx_stomp)
                scr_sound(sfx_stun)
                stuntime = 120
                direction = point_direction(obj_player.x, (obj_player.y + 24), x, y)
                speed = 1
                hsp = (lengthdir_x(speed, direction) * 8)
                vsp = (lengthdir_y(speed, direction) * 8)
                speed = 0
                state = "stun"
                stunxsc = 1.25
                stunysc = 0.75
                stun_delay = 8
                if (obj_player.x < x)
                    image_xscale = -1
                else
                    image_xscale = 1
            }
        }
    }
}
