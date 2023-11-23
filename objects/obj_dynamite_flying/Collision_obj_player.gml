if (other.state != "doorexit" && other.state != "enterdoor" && other.state != "doorkey_enter" && safe == 0)
{
    if (obj_player.tauntduration > 0)
    {
        with (other)
        {
            scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
            image_xscale = sign((other.x - x))
        }
        image_xscale = (-image_xscale)
        hsp = (-hsp)
        vsp = (-vsp)
        safe = 1
        harmless = 1
    }
    else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
        hp--
}
