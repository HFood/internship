y += vsp
if ((place_meeting(x, (y + 1), obj_solid) || place_meeting(x, (y + 1), obj_platform)) && active == 1)
{
    land = 1
    with (obj_camera)
        shk_strength += 4
    scr_sound(sfx_groundpound)
    active = 0
    goingup = 1
}
if (land == 0)
{
    if (goingup == 1 && y > starty)
    {
        if (sprite_index != spr_cheesefist_land)
            vsp = -4
        else
            vsp = 0
    }
    else
    {
        vsp = 0
        goingup = 0
    }
}
if (land == 1)
{
    vsp = 0
    sprite_index = spr_cheesefist_land
}
else if (active == 1)
{
    sprite_index = spr_cheesefist_fall
    vsp = 8
}
else
    sprite_index = spr_cheesefist_idle
if (collision_rectangle((x - 64), y, (x + 64), (y + 320), obj_player, 0, 1) && (!(collision_line(x, y, x, obj_player.y, obj_solid, false, true))) && active == 0 && goingup == 0 && obj_player.state != "cheesed" && obj_player.state != "snowball" && land == 0)
    active = 1
