scr_player_collision()
vsp += 2
vsp = min(vsp, 18)
if grounded
{
    if (ggg == 0)
    {
        with (obj_camera)
            shk_strength += 12
        scr_basheffect_offset(0, (sprite_height / 2))
        scr_sound(sfx_heavydrop)
        ggg = 1
    }
}
else
    ggg = 0
