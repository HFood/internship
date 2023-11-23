if (other.key_up_once && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep") && global.escape == 1)
{
    with (obj_scorekeeper)
    {
        fakescore = 0
        comboscoreplus = 0
        rmg_x = -100
        rmg_txt = "N"
        rmg_active = 0
        rmg_spr = spr_radiomessage_start
        rmg2_spr = spr_tv_player2_talk_start
        rmg_img = 0
        rmg2_img = 0
        rmg_bubble = 0
    }
    audio_stop_sound(global.bigsvoice)
    with (instance_create_depth(x, y, -1001, obj_fade))
    {
        depth = -1001
        draw_gui = 0
        image_blend = c_white
    }
    with (other)
    {
        depth = -1002
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
        door_id = other.id
        state = "escapeenter"
    }
}
