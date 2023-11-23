if (global.escape == 1)
    image_alpha = 1
else
    image_alpha = 0.2
if (doit == 1)
{
    with (obj_player)
    {
        portalsecret = 0
        doornum = "NONE"
    }
    ds_list_clear(global.enemy_spawners)
    if (!audio_is_playing(mu_lap2_new))
    {
        audio_group_stop_all(1)
        global.music = audio_play_sound(mu_lap2_new, 1, true)
    }
    switch global.level
    {
        case "rooftop":
            room_goto(rm_rooftop8)
            break
        case "ancient":
            room_goto(rm_ancient8)
            break
        case "cave":
            room_goto(rm_cave7)
            break
        case "resort":
            room_goto(rm_resort9)
            break
        case "crateburg":
            room_goto(rm_crateburg7)
            break
        case "freezer":
            room_goto(rm_freezer8)
            break
        case "circus":
            room_goto(rm_circus11)
            break
        case "train":
            room_goto(rm_train6)
            break
    }

}
