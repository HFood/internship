function scr_player_supertaunt() //gml_Script_scr_player_supertaunt
{
    scr_player_collision(0, 0)
    xface = image_xscale
    grabbing = 0
    spinning = 0
    if (tauntduration > 0)
        tauntduration--
    crouch = 0
    hsp = 0
    vsp = 0
    image_speed = 1
    sprite_index = supertaunt_spr
    if (jumpspr == spr_intern_jump_grab)
    {
        scr_tauntimages()
        jumpspr = spr_sauce
    }
}

