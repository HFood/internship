if (other.state == "normal" && other.spinning == 1 && other.tauntduration == 0 && other.crouch == 0)
{
    bounced = 0
    hsp = 0
    slide_spd = 0
    if (first == 1)
    {
        timer += 180
        first = 0
    }
    notgrounded = 1
    grabber_id = other.id
    with (other)
    {
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        spinning = 0
        state = "grab"
        grabling = other.id
    }
}
else if (other.state == "bodyslam")
{
    with (other)
    {
        longfall_time = 60
        jumpspr = spr_ghostic_jump
        vsp = -14
        state = "normal"
    }
    harmless = 1
    instance_destroy()
}
else if (other.state == "tackle2" || other.state == "tackle1" || other.state == "tackle0")
    timer = 0
