if place_meeting(x, (y - 1), obj_player)
{
    if ((obj_player.state == "normal" || obj_player.state == "tackle0" || obj_player.state == "tackle1" || obj_player.state == "tackle2" || obj_player.state == "grab" || obj_player.state == "slip") && obj_player.tauntduration == 0 && obj_player.grounded && obj_player.state != "ghost")
    {
        obj_player.slipjump = 1
        obj_player.suprastate = "slip"
        with (obj_player)
        {
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
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
            grabbing = 0
            spinning = 0
            tauntduration = 0
            state = "slip"
            crouchslide_dur = 14
        }
    }
}
if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player))
{
    if (obj_player.state == "wallrun" && obj_player.tauntduration == 0)
    {
        with (obj_player)
        {
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            if instance_exists(tackle_particle)
                instance_destroy(tackle_particle)
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            if audio_is_playing(roll_sfx)
                audio_stop_sound(roll_sfx)
            vsp = (-((4 + (wallrun_spd * 0.75))))
            machtime = 0
            wallrun_spd = 0
            tack0 = 0
            tack1 = 0
            tack2 = 0
            grabbing = 0
            spinning = 0
            tauntduration = 0
            state = "normal"
            jumpspr = spr_lamp
        }
    }
}
