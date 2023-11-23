if (global.lunchy == 1 && global.laps > 0 && other.key_up && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep") && (!(place_meeting(x, y, obj_solid))))
{
    global.lunchy = 0
    with (obj_lunchy)
    {
        x = (obj_player.x - 48)
        y = obj_player.y
        persistent = 0
        state = "delivered"
    }
    with (obj_camera)
        mach_x = 0
    opening = 1
    with (instance_create_depth(x, y, 19, obj_debris))
    {
        sprite_index = spr_lock
        particles = 0
        hsp = irandom_range(-4, 4)
        vsp = irandom_range(-3, -6)
    }
    with (obj_player)
    {
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        tack0 = 0
        tack1 = 0
        tack2 = 0
        doornum = other.doornum
        door_id = other.id
        state = "doorkey_enter"
        image_index = 0
    }
}
