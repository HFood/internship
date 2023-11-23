if instance_exists(obj_player)
{
    if (obj_player.state == "enterportal" && obj_player.portalsecret == 1)
    {
        if (insecret == 1)
        {
            if (global.secrets_total <= 0 && global.secrets == 0)
            {
                with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_tvtrigger))
                {
                    persistent = 1
                    attach = 1
                    txt = "Oh! It seems you've found a secret, intern! There are 3 secrets in each level. They contain bonus points so better don't miss 'em!"
                }
            }
            global.insecret = 1
            global.secrets++
            with (obj_scorekeeper)
                tv_secretfound = 0
            scr_message((("YOU HAVE FOUND " + string(global.secrets)) + " SECRETS OUT OF 3"))
        }
        else
            global.insecret = 0
        scr_sound(sfx_secretexit)
        ds_list_clear(global.enemy_spawners)
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
        scale = 1
        visible = true
    }
}
