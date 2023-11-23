if instance_exists(obj_player)
{
    if (obj_player.state == "enterportal" && obj_player.portalsecret == 0)
    {
        global.laps++
        with (obj_player)
        {
            state = "outterportal"
            x = other.x
            y = other.y
            tack2 = 0
            tack1 = 0
            tack0 = 0
            tacklehit = 1
            rolltotackle = 1
            jumpspr = spr_sauce
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
        }
        scr_sound(sfx_bell)
        global.score += 2000
        with (instance_create_depth(obj_player.x, obj_player.y, -1, obj_textfloat))
            _score = 2000
        scale = 1
        visible = true
    }
}
