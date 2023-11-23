if (global.escape == 1)
{
    if (other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal")
    {
        global.combotimer = global.combotimer_full
        with (obj_camera)
            mach_x = 0
        scr_sound(sfx_portal)
        with (obj_player)
        {
            grabonground = 0
            tack1 = 0
            tack2 = 0
            tack0 = 0
            rolltotackle = 1
            tacklehit = 1
            machspd = 0
            machtime = 0
            portal_id = other.id
            state = "enterportal"
        }
        if (global.coop == 1)
        {
            with (obj_player2)
            {
                grabonground = 0
                tack1 = 0
                tack2 = 0
                tack0 = 0
                rolltotackle = 1
                tacklehit = 1
                machspd = 0
                machtime = 0
                portal_id = other.id
                state = "enterportal"
            }
        }
    }
}
