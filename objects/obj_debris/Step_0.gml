if (machdeath == 1)
{
    if (place_meeting(x, y, obj_player) && y < obj_player.y)
    {
        if (noplayercol == 1)
        {
            spinstrength = irandom_range(2, 25)
            if (obj_player.x < x)
                hsp = 9
            else
                hsp = -9
            vsp = -9
        }
    }
    else
        noplayercol = 1
    x += max(-20, min(20, hsp))
    y += max(-12, vsp)
}
else
{
    x += hsp
    y += vsp
}
vsp += grv
if (sprite_index == spr_water_drop && place_meeting(x, y, obj_solid))
    instance_destroy()
if (particles == 1)
{
    if (particles_dur > 0)
        particles_dur--
    else
    {
        with (instance_create_depth((x + irandom_range(-10, 10)), (y + irandom_range(-10, 10)), 10, obj_effecttemporary))
            sprite_index = spr_effect1
        particles_dur = (8 - (hsp * 0.5))
        particles_dur = max(particles_dur, 2)
    }
}
if (shrinking == 1)
{
    if (image_xscale > 0.1)
        image_xscale -= 0.02
    else
        instance_destroy()
    image_yscale = image_xscale
}
if (spinning == 1)
    image_angle += (spinstrength * spindir)
