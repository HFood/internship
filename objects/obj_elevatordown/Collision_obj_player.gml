if (other.key_up && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep") && (!(place_meeting(x, y, obj_solid))))
{
    with (obj_camera)
        mach_x = 0
    scr_1sound(sfx_door)
    instance_create_depth(x, y, -10, obj_fade)
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
        doorexit_state = "exit"
        door_id = other.id
        doorexit_shocked = 0
        door_rm = other.rm
        door_x = other.targx
        door_y = other.targy
        state = "enterdoor"
        image_index = 0
    }
}
