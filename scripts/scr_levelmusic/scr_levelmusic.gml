function scr_levelmusic() //gml_Script_scr_levelmusic
{
    if (room == rm_menu)
        global.music = audio_play_sound(mu_title, 1, true)
    else
    {
        switch global.level
        {
            case "rooftop":
                global.music = audio_play_sound(mu_entrance, 1, true)
                break
            case "ancient":
                global.music = audio_play_sound(mu_ancient, 1, true)
                break
            case "cave":
                global.music = audio_play_sound(mu_cave_a, 1, true)
                break
            case "resort":
                global.music = audio_play_sound(mu_resort_a, 1, true)
                break
            case "crateburg":
                global.music = audio_play_sound(mu_entrance, 1, true)
                break
            case "train":
                global.music = audio_play_sound(mu_train, 1, true)
                break
            case "urban":
                global.music = audio_play_sound(mu_urban, 1, true)
                break
        }

    }
}

