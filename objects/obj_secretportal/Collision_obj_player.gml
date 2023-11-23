if (other.state != "ghost" && other.state != "enterportal")
{
    with (obj_camera)
        mach_x = 0
    image_index = 0
    sprite_index = spr_secretportal_enterstart
    scr_sound(sfx_secretenter)
    with (obj_player)
    {
        if (!(collision_rectangle((other.x - 144), (other.y - 144), (other.x + 144), (other.y + 144), obj_player, 0, 0)))
        {
            x = clamp(x, (other.x + 144), (other.x - 144))
            y = clamp(y, (other.y + 144), (other.y - 144))
        }
        grabonground = 0
        tack1 = 0
        tack2 = 0
        tack0 = 0
        rolltotackle = 1
        tacklehit = 1
        machspd = 0
        machtime = 0
        doornum = "NONE"
        portal_id = other.id
        state = "enterportal"
    }
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            if (!(collision_rectangle((other.x - 144), (other.y - 144), (other.x + 144), (other.y + 144), obj_player2, 0, 0)))
            {
                x = clamp(x, (other.x + 144), (other.x - 144))
                y = clamp(y, (other.y + 144), (other.y - 144))
            }
            grabonground = 0
            tack1 = 0
            tack2 = 0
            tack0 = 0
            rolltotackle = 1
            tacklehit = 1
            machspd = 0
            machtime = 0
            doornum = "NONE"
            portal_id = other.id
            state = "enterportal"
        }
    }
}
