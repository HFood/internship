if (other.state != "doorexit" && other.state != "enterdoor" && other.state != "doorkey_enter")
{
    if (state == "tuna_heat")
    {
        if (obj_player.tauntduration > 0)
        {
            with (other)
            {
                scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
                image_xscale = sign((other.x - x))
            }
            y = (obj_player.y - 32)
            if (other.x < x)
                deathside = -1
            else
                deathside = 1
            state = "deathtackle"
        }
        else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed")
        {
            with (other)
                scr_player_perform_hurt(1, other.id)
        }
    }
}
