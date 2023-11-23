function scr_player_cutscene() //gml_Script_scr_player_cutscene
{
    scr_player_collision(0, 0)
    xface = image_xscale
    image_xscale = cutscene_xsc
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    hsp = 0
    vsp = 0
    grounded = 1
    image_speed = 1
    sprite_index = spr_player_idle
    x += ((cutscene_x - x) * 0.08)
    if (cutscene_choice == 1)
    {
        if key_left_once
            cutscene_choice_c--
        if key_right_once
            cutscene_choice_c++
        cutscene_choice_c = clamp(cutscene_choice_c, 1, 3)
    }
}

