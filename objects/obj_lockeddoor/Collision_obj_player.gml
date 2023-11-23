if (global.key == 1 && other.key_up && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep") && (!(place_meeting(x, y, obj_solid))))
{
    with (obj_camera)
        mach_x = 0
    with (obj_keybuddy)
    {
        curx = x
        cury = y
        state = "shake"
    }
    opening = 1
    global.key = 0
    with (instance_create_depth(x, y, 19, obj_debris))
    {
        sprite_index = spr_lock
        particles = 0
        hsp = irandom_range(-4, 4)
        vsp = irandom_range(-3, -6)
    }
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            if (!(collision_rectangle((other.x - 64), (other.y - 12), (other.x + 64), (other.y + 12), obj_player2, 0, 0)))
                x = other.x
            y = (other.y - 2)
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
    with (obj_player)
    {
        if (!(collision_rectangle((other.x - 64), (other.y - 12), (other.x + 64), (other.y + 12), obj_player, 0, 0)))
            x = other.x
        y = (other.y - 2)
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
