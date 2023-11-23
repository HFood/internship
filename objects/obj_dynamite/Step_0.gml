if (timer < 60)
    sprite_index = spr_dynamite_nearend
else
    sprite_index = spr_dynamite
if instance_exists(grabber_id)
{
    if (grabber_id.state == "grab")
        depth = -1
    else
        grabber_id = -4
}
else
{
    depth = 2
    if (place_meeting((x + 1), (y + 1), obj_bombbox) || place_meeting((x - 1), (y - 1), obj_bombbox))
        timer = 0
    scr_player_collision(0, 0)
    scr_gravity()
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_bombbox))))
        image_xscale = (-image_xscale)
    if grounded
    {
        if (bounced == 0)
        {
            vsp = -6
            bounced = 1
        }
        if (notgrounded == 1)
        {
            slide_spd = fly_spd
            notgrounded = 0
        }
        hsp = (slide_spd * image_xscale)
    }
    else
        hsp = (fly_spd * image_xscale)
    if (slide_spd > 0.2)
        slide_spd -= 0.25
    else
        slide_spd = 0
}
if (timer > 0)
    timer--
else
    instance_destroy()
