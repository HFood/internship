switch object_index
{
    case obj_player:
        key_left = keyboard_check(global.key_left)
        key_right = keyboard_check(global.key_right)
        key_up = keyboard_check(global.key_up)
        key_down = keyboard_check(global.key_down)
        key_jump = keyboard_check_pressed(global.key_jump)
        key_grab = keyboard_check_pressed(global.key_grab)
        key_taunt = keyboard_check_pressed(global.key_taunt)
        key_shoot = keyboard_check_pressed(global.key_shoot)
        key_dash = keyboard_check(global.key_dash)
        key_left_once = keyboard_check_pressed(global.key_left)
        key_right_once = keyboard_check_pressed(global.key_right)
        key_up_once = keyboard_check_pressed(global.key_up)
        key_down_once = keyboard_check_pressed(global.key_down)
        key_jump_hold = keyboard_check(global.key_jump)
        key_grab_hold = keyboard_check(global.key_grab)
        key_taunt_hold = keyboard_check(global.key_taunt)
        key_shoot_hold = keyboard_check(global.key_shoot)
        key_dash_once = keyboard_check_pressed(global.key_dash)
        key_left_release = keyboard_check_released(global.key_left)
        key_right_release = keyboard_check_released(global.key_right)
        key_up_release = keyboard_check_released(global.key_up)
        key_down_release = keyboard_check_released(global.key_down)
        key_jump_release = keyboard_check_released(global.key_jump)
        key_grab_release = keyboard_check_released(global.key_grab)
        key_taunt_release = keyboard_check_released(global.key_taunt)
        key_shoot_release = keyboard_check_released(global.key_shoot)
        key_dash_release = keyboard_check_released(global.key_dash)
        break
    case obj_player2:
        key_left = keyboard_check(ord("S"))
        key_right = keyboard_check(ord("F"))
        key_up = keyboard_check(ord("E"))
        key_down = keyboard_check(ord("D"))
        key_jump = keyboard_check_pressed(vk_space)
        key_grab = keyboard_check_pressed(ord("R"))
        key_taunt = keyboard_check_pressed(ord("T"))
        key_shoot = keyboard_check_pressed(ord("Y"))
        key_dash = keyboard_check(ord("Q"))
        key_left_once = keyboard_check_pressed(ord("S"))
        key_right_once = keyboard_check_pressed(ord("F"))
        key_up_once = keyboard_check_pressed(ord("E"))
        key_down_once = keyboard_check_pressed(ord("D"))
        key_jump_hold = keyboard_check(vk_space)
        key_grab_hold = keyboard_check(ord("R"))
        key_taunt_hold = keyboard_check(ord("T"))
        key_shoot_hold = keyboard_check(ord("Y"))
        key_dash_once = keyboard_check_pressed(ord("Q"))
        key_left_release = keyboard_check_released(ord("S"))
        key_right_release = keyboard_check_released(ord("F"))
        key_up_release = keyboard_check_released(ord("E"))
        key_down_release = keyboard_check_released(ord("D"))
        key_jump_release = keyboard_check_released(vk_space)
        key_grab_release = keyboard_check_released(ord("R"))
        key_taunt_release = keyboard_check_released(ord("T"))
        key_shoot_release = keyboard_check_released(ord("Y"))
        key_dash_release = keyboard_check_released(ord("Q"))
        break
}

move = (key_right - key_left)
if (blink > 0)
    blink--
if (state != "bodyslam" && instance_exists(bodyslam_particle))
    instance_destroy(bodyslam_particle)
if (voice_hurttime > 0)
    voice_hurttime--
if (invincibility > 0)
{
    if (flash1 > 0)
    {
        image_alpha = 0.5
        flash1--
    }
    else if (flash1 == 0)
    {
        flash2 = 5
        flash1 = -1
    }
    if (flash2 > 0)
    {
        image_alpha = 1
        flash2--
    }
    else if (flash2 == 0)
    {
        flash1 = 5
        flash2 = -1
    }
    invincibility--
}
else
{
    flash1 = 5
    flash2 = -1
    if (inwater && inwater_shallow == 0)
        image_alpha = 0.8
    else
        image_alpha = 1
}
switch state
{
    case "normal":
        scr_player_normal()
        break
    case "wallstun":
        scr_player_wallstun()
        break
    case "wallstun_air":
        scr_player_wallstun_air()
        break
    case "ladder":
        scr_player_ladder()
        break
    case "crouchslide":
        scr_player_crouchslide()
        break
    case "spinhit":
        scr_player_spinhit()
        break
    case "bodyslam":
        scr_player_bodyslam()
        break
    case "longfall_hit":
        scr_player_longfall_hit()
        break
    case "hurt":
        scr_player_hurt()
        break
    case "parry":
        scr_player_parry()
        break
    case "doorexit":
        scr_player_doorexit()
        break
    case "keyget":
        scr_player_keyget()
        break
    case "slip":
        scr_player_slip()
        break
    case "enterdoor":
        scr_player_enterdoor()
        break
    case "doorkey_enter":
        scr_player_doorkey_enter()
        break
    case "entergate":
        scr_player_entergate()
        break
    case "roomenter":
        scr_player_roomenter()
        break
    case "ghost":
        scr_player_ghost()
        break
    case "bodyslam_spin":
        scr_player_bodyslam_spin()
        break
    case "uppunch":
        scr_player_uppunch()
        break
    case "timesup":
        scr_player_timesup()
        break
    case "tackle0":
        scr_player_tackle0()
        break
    case "tackle1":
        scr_player_tackle1()
        break
    case "tackle2":
        scr_player_tackle2()
        break
    case "wallrun":
        scr_player_wallrun()
        break
    case "walljump":
        scr_player_walljump()
        break
    case "ceilinghit":
        scr_player_ceilinghit()
        break
    case "tackleturn":
        scr_player_tackleturn()
        break
    case "tacklestop":
        scr_player_tacklestop()
        break
    case "wallstun_hard":
        scr_player_wallstun_hard()
        break
    case "cutscene":
        scr_player_cutscene()
        break
    case "cheesed":
        scr_player_cheesed()
        break
    case "tumble":
        scr_player_tumble()
        break
    case "blewrecover":
        scr_player_blewrecover()
        break
    case "intro_scooter":
        scr_player_intro_scooter()
        break
    case "intro_fall":
        scr_player_intro_fall()
        break
    case "intro_land":
        scr_player_intro_land()
        break
    case "grab":
        scr_player_grab()
        break
    case "bombthrow":
        scr_player_bombthrow()
        break
    case "escapeenter":
        scr_player_escapeenter()
        break
    case "superjump":
        scr_player_superjump()
        break
    case "superjumpprep":
        scr_player_superjumpprep()
        break
    case "superjump_spin":
        scr_player_superjump_spin()
        break
    case "superjump_kick":
        scr_player_superjump_kick()
        break
    case "enterportal":
        scr_player_enterportal()
        break
    case "outterportal":
        scr_player_outterportal()
        break
    case "sodaride":
        scr_player_sodaride()
        break
    case "jetpack_windup":
        scr_player_jetpack_windup()
        break
    case "jetpack_dash":
        scr_player_jetpack_dash()
        break
    case "jetpack_run":
        scr_player_jetpack_run()
        break
    case "jetpack_wallhit":
        scr_player_jetpack_wallhit()
        break
    case "snowball":
        scr_player_snowball()
        break
    case "supertaunt":
        scr_player_supertaunt()
        break
    case "ghostcheckpoint":
        scr_player_ghostcheckpoint()
        break
    case "onfire":
        scr_player_onfire()
        break
    case "mayogun_pickup":
        scr_player_mayogun_pickup()
        break
    case "mayogun_shoot":
        scr_player_mayogun_shoot()
        break
    case "fishride":
        scr_player_fishride()
        break
    case "cemented":
        scr_player_cemented()
        break
}

if (state != "tumble")
{
    if audio_is_playing(tumblesfx)
        audio_stop_sound(tumblesfx)
}
if (state != "bodyslam")
{
    if audio_is_playing(bodyslamsfx)
        audio_stop_sound(bodyslamsfx)
}
if grounded
{
    jetjump = 0
    longfall_time = 90
}
if (tack0 != 1 && tack1 != 1 && tack2 != 1 && state != "sodaride" && state != "jetpack_run")
{
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if instance_exists(tackle_particle)
        instance_destroy(tackle_particle)
    machspd = 0
    wallrun_spd = 0
    if (state == "normal" && key_dash && crouch == 0 && tauntduration == 0 && longfall_time == -1)
    {
    }
    else
        machtime = 0
}
if (tack1 != 1 && state != "cheesed" && state != "snowball")
{
    if audio_is_playing(roll_sfx)
        audio_stop_sound(roll_sfx)
}
if (state != "wallrun" && wrun_tackle == 2)
    wrun_tackle = 1
if (state != "superjumpprep" && state != "jetpack_windup")
{
    if audio_is_playing(superjumpprep_sfx)
        audio_stop_sound(superjumpprep_sfx)
}
if (state != "normal" && state != "tackle1" && state != "tackle2" && state != "walljump")
{
    tauntpitch_timer = 0
    tauntpitch = 1
}
else if (tauntpitch_timer > 0)
{
    if (tauntduration == 0)
        tauntpitch_timer--
}
else
    tauntpitch = 1
if (state != "normal")
{
    voice_idletime = 0
    if (landspr == spr_sauce)
        landspr = spr_backy_cheesed_jump
    if (jumpspr == spr_bg_freezer2a || jumpspr == spr_lamp)
        jumpspr = spr_sauce
}
if (state == "supertaunt" || state == "ghostcheckpoint")
    depth = -1005
else
    depth = 1
if (global.stylin_score >= 10)
{
    if (!instance_exists(stylin_particle))
    {
        stylin_particle = instance_create_depth(x, y, -1, obj_effecttarget)
        with (stylin_particle)
        {
            persistent = 1
            targ = other.id
            sprite_index = spr_effect21
        }
    }
}
else if instance_exists(stylin_particle)
    instance_destroy(stylin_particle)
if ((!(place_meeting(x, (y + 1), obj_slope))) || tauntduration > 0 || state == "ghostcheckpoint")
{
    if (other.angle > 0)
        other.angle -= 3
    else if (other.angle < 0)
        other.angle += 3
}
else
{
    with (instance_place(x, (y + 1), obj_slope))
    {
        if (abs(image_yscale) < abs(image_xscale))
        {
            if (sign(image_xscale) == 1)
            {
                if (other.angle < 15)
                    other.angle += 3
            }
            else if (other.angle > -15)
                other.angle -= 3
        }
        else if (sign(image_xscale) == 1)
        {
            if (other.angle < 30)
                other.angle += 6
        }
        else if (other.angle > -30)
            other.angle -= 6
    }
}
if (hallwayenter == 1)
{
    x = hallway_id.x
    y = hallway_y
}
if ((y > (room_height + 50) || y < -160) && instance_exists(spawnpoint_id) && state != "ghostcheckpoint")
    scr_player_gotocheckpoint()
if (hitfreeze > 0)
{
    if (_phsp == 0)
        _phsp = hsp
    if (_pvsp == 0)
        _pvsp = vsp
    hitfreeze--
    if key_jump
        hitfreeze_jump = 1
    if (hitfreeze == 0)
    {
        _phsp = 0
        _pvsp = 0
        if (hitfreeze_jump == 1)
        {
            keyboard_key_press(global.key_jump)
            hitfreeze_jump = 0
        }
        if (tackle_jump == 1 && state == "tackle2")
        {
            tacklehit = 1
            rolltotackle = 1
            jumpspr = spr_intern_jump_grab
            image_index = 0
            scr_sound(sfx_jump)
            vsp = -10
        }
    }
}
else
    tackle_jump = 0
inwater = place_meeting(x, y, obj_water)
if inwater
{
    inwater_obj = instance_place(x, y, obj_water)
    if ((y + 16) < inwater_obj.bbox_top)
        inwater_shallow = 1
    else
        inwater_shallow = 0
    if (bubble_timer > 0)
        bubble_timer--
    else
    {
        instance_create_depth((x + (image_xscale * 14)), (bbox_top + 20), -1, obj_water_bubble)
        bubble_timer = irandom_range(8, 40)
    }
    if (move != 0)
    {
        if (water_drops < 4)
            water_drops++
        else
        {
            scr_water_drops()
            water_drops = 0
        }
    }
}
if (state != "spinhit" && state != "parry" && state != "jetpack_wallhit")
{
    if (hsp > 0)
    {
        image_xscale = 1
        facing = 1
    }
    if (hsp < 0)
    {
        image_xscale = -1
        facing = -1
    }
}
