function scr_player_ladder() //gml_Script_scr_player_ladder
{
    scr_player_collision(0, 0)
    xface = 1
    slidejump = 0
    tauntduration = 0
    if (grounded && (!key_up))
        state = "normal"
    if (!(place_meeting(x, y, obj_ladder)))
    {
        if instance_place(x, (y + 1), obj_platform)
            y = ((instance_place(x, (y + 1), obj_platform).bbox_top - (sprite_height / 2)) - 2)
        spinning = 0
        tack0 = 1
        tack1 = 0
        tack2 = 0
        vsp = 0
        state = "normal"
    }
    longfall_time = 46
    crouch = 0
    stomp = 0
    mask_index = spr_intern_hitbox
    if key_up
    {
        sprite_index = spr_player_ladderup
        image_speed = 1
        vsp = -6
    }
    else if key_down
    {
        sprite_index = spr_player_ladderdown
        vsp = 8
    }
    else
    {
        sprite_index = spr_player_ladderup
        image_speed = 0
        vsp = 0
    }
    if key_jump
    {
        image_index = 0
        jumpspr = spr_intern_jump_grab
        state = "normal"
        scr_sound(sfx_jump)
        if (!key_down)
            vsp = -10
    }
    grabonground = 0
    scr_player_action_suplex()
}

