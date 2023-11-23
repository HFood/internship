if (instance_exists(targ) && other.state != "doorexit" && other.state != "enterdoor" && other.state != "doorkey_enter" && obj_player.state != "escapeenter" && other.state != "sodaride" && other.state != "snowball" && other.state != "ghostcheckpoint" && other.state != "onfire")
{
    if (targ.object_index == obj_knight)
    {
        if (targ.state == "normal")
        {
            if (obj_player.tauntduration > 0)
            {
                with (other)
                {
                    scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                    image_xscale = sign((other.x - x))
                }
                with (targ)
                {
                    y = (obj_player.y - 32)
                    if (other.x < x)
                        deathside = -1
                    else
                        deathside = 1
                    state = "deathtackle"
                }
            }
            else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
            {
                scr_sound(asset_get_index(("sfx_poke" + string(irandom_range(1, 2)))))
                with (other)
                    scr_player_perform_hurt(1, other.id)
            }
        }
    }
    else if (targ.object_index == obj_tuna)
    {
        if (targ.state == "dash")
        {
            if (obj_player.tauntduration > 0)
            {
                with (other)
                {
                    scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                    image_xscale = sign((other.x - x))
                }
                with (targ)
                {
                    y = (obj_player.y - 32)
                    if (other.x < x)
                        deathside = -1
                    else
                        deathside = 1
                    state = "deathtackle"
                }
            }
            else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
            {
                scr_sound(sfx_bite)
                with (other)
                    scr_player_perform_hurt(1, other.id)
            }
        }
    }
    else if (targ.object_index == obj_rabbit)
    {
        if (targ.state == "run" || targ.state == "rabbit_heat")
        {
            if (obj_player.tauntduration > 0)
            {
                with (other)
                {
                    scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                    image_xscale = sign((other.x - x))
                }
                with (targ)
                {
                    y = (obj_player.y - 32)
                    if (other.x < x)
                        deathside = -1
                    else
                        deathside = 1
                    state = "deathtackle"
                }
            }
            else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
            {
                scr_sound(asset_get_index(("sfx_poke" + string(irandom_range(1, 2)))))
                with (other)
                    scr_player_perform_hurt(1, other.id)
            }
        }
    }
    else if (targ.object_index == obj_burgercop)
    {
        if (targ.state == "normal")
        {
            if (obj_player.tauntduration > 0)
            {
                with (other)
                {
                    scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                    image_xscale = sign((other.x - x))
                }
                with (targ)
                {
                    y = (obj_player.y - 32)
                    if (other.x < x)
                        deathside = -1
                    else
                        deathside = 1
                    state = "deathtackle"
                }
            }
            else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "tackle2" && other.state != "sodaride" && other.state != "jetpack_run" && other.state != "jetpack_dash" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
            {
                with (other)
                    scr_player_perform_hurt(1, other.id)
            }
        }
    }
    else if (targ.object_index == obj_bread)
    {
        if (targ.state == "bread_heat" && targ.heat_state == 2)
        {
            if (obj_player.tauntduration > 0)
            {
                with (other)
                {
                    scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                    image_xscale = sign((other.x - x))
                }
                with (targ)
                {
                    y = (obj_player.y - 32)
                    if (other.x < x)
                        deathside = -1
                    else
                        deathside = 1
                    state = "deathtackle"
                }
            }
            else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
            {
                with (other)
                    scr_player_perform_hurt(1, other.id)
            }
        }
    }
}
