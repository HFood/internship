function scr_player_intro_scooter() //gml_Script_scr_player_intro_scooter
{
    scr_player_collision(0, 0)
    xface = 1
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    hsp = 0
    vsp = 0
    grounded = 1
    image_speed = 1
    sprite_index = spr_player_scooter
    if place_meeting(x, y, obj_intro_rock)
    {
        with (instance_create_depth(x, y, -1, obj_effecttemporary))
            sprite_index = spr_effect15
        scr_sound(sfx_hurt)
        for (var spr = spr_backy_cheesed_jump; spr < spr_bg_freezer2a; spr++)
        {
            var debr = instance_create_depth(x, y, depth, obj_debris)
            with (debr)
            {
                particles = 0
                hsp = irandom_range(-8, 8)
                vsp = irandom_range(-5, -8)
                sprite_index = spr_debris_bike2
            }
            debr.image_index = spr
        }
        vsp = -18
        hsp = 13
        state = "intro_fall"
    }
}

