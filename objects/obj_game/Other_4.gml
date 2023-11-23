if (room == rm_ship3)
    global.silhouette_mode = 1
else
    global.silhouette_mode = 0
if (room == rm_hub_floor1 || room == rm_hub_floor2)
{
    ini_open(global.savedata_ini)
    var _sc1 = ini_read_real("score", "crateburg", 0)
    var _sc2 = ini_read_real("score", "rooftop", 0)
    var _sc3 = ini_read_real("score", "ancient", 0)
    var _sc4 = ini_read_real("score", "cave", 0)
    var _sc5 = ini_read_real("score", "resort", 0)
    var _sc6 = ini_read_real("score", "ship", 0)
    var _sc7 = ini_read_real("score", "circus", 0)
    var _sc8 = ini_read_real("score", "train", 0)
    global.score_total = (((((((_sc1 + _sc2) + _sc3) + _sc4) + _sc5) + _sc6) + _sc7) + _sc8)
    global.levels_done = (((((((clamp(_sc1, 0, 1) + clamp(_sc2, 0, 1)) + clamp(_sc3, 0, 1)) + clamp(_sc4, 0, 1)) + clamp(_sc5, 0, 1)) + clamp(_sc6, 0, 1)) + clamp(_sc7, 0, 1)) + clamp(_sc8, 0, 1))
    _sc1 = ini_read_real("secrets", "crateburg", 0)
    _sc2 = ini_read_real("secrets", "rooftop", 0)
    _sc3 = ini_read_real("secrets", "ancient", 0)
    _sc4 = ini_read_real("secrets", "cave", 0)
    _sc5 = ini_read_real("secrets", "resort", 0)
    _sc6 = ini_read_real("secrets", "ship", 0)
    _sc7 = ini_read_real("secrets", "circus", 0)
    _sc8 = ini_read_real("secrets", "train", 0)
    global.secrets_total = (((((((_sc1 + _sc2) + _sc3) + _sc4) + _sc5) + _sc6) + _sc7) + _sc8)
    ini_close()
}
if (room == rm_timesup)
    pause = -1
if (room == rm_train1 && global.trainescape == 0 && global.escape == 0)
{
    global.trainsfx = audio_play_sound(sfx_traintracks, 1, true)
    global.trainescape = 1
    global.traintimer_min = 1
    global.traintimer_sec = 0
    global.traintimer_ms = 60
}
if (room != rm_timesup && room != rm_rank)
{
    switch room
    {
        case rm_menu:
            rmname = string_upper(game_display_name)
            break
        case rm_charselect:
            rmname = "SELECT YOUR DELIVERY GUY"
            break
        case rm_rooftop1:
            rmname = "WELCOME TO INTERNSHIP"
            break
        case rm_rooftop1a:
            rmname = "LAPPING ROOM"
            break
        case rm_rooftop2:
            rmname = "GOING THROUGH"
            break
        case rm_rooftop3:
            rmname = "A PASSAGE..."
            break
        case rm_rooftop4:
            rmname = "PLATFORMING"
            break
        case rm_rooftop5:
            rmname = "FRESH CITY WINDS"
            break
        case rm_rooftop6:
            rmname = "UPWARDS AND DOWNWARDS"
            break
        case rm_rooftop7:
            rmname = "PALMTREE PARADISE"
            break
        case rm_rooftop8:
            rmname = "NERD AHEAD"
            break
        case rm_rooftop_secret1:
            rmname = "YOUR FIRST SECRET"
            break
        case rm_rooftop_secret2:
            rmname = "SIMPLE SHAPES"
            break
        case rm_rooftop_secret3:
            rmname = "TOWER OF FOOD"
            break
        case rm_ancient1:
            rmname = "INTERNSHIP THE TEMPLE"
            break
        case rm_ancient2:
            rmname = "OLD BRICKS"
            break
        case rm_ancient3:
            rmname = "MANSION REMAINS"
            break
        case rm_ancient4:
            rmname = "SQUISHING REQUIRED"
            break
        case rm_ancient5:
            rmname = "THE LONG AND WINDING ROAD"
            break
        case rm_ancient6:
            rmname = "TEMPLE OF CHEESINESS"
            break
        case rm_ancient7:
            rmname = "SQUISH AND ROLL"
            break
        case rm_ancient7a:
            rmname = "BOOBY TRAPPED"
            break
        case rm_ancient8:
            rmname = "CHEESY DEMOLITION"
            break
        case rm_ancient_secret1:
            rmname = "RUINED SECRET"
            break
        case rm_ancient_secret2:
            rmname = "CHEESE OF AGES"
            break
        case rm_ancient_secret3:
            rmname = "DEATH ROLL"
            break
        case rm_cave1:
            rmname = "INTERNSHIP UNDERGROUND"
            break
        case rm_cave1a:
            rmname = "CAVE SHORTCUT"
            break
        case rm_cave2:
            rmname = "RAT MINES"
            break
        case rm_cave3:
            rmname = "HARDHAT AREA"
            break
        case rm_cave3a:
            rmname = "SOME BORING CAVE"
            break
        case rm_cave4:
            rmname = "CRAFTY OBSTACLE"
            break
        case rm_cave5:
            rmname = "WE NEED TO GO DEEPER"
            break
        case rm_cave6:
            rmname = "HIGH AWAY"
            break
        case rm_cave6a:
            rmname = "UNFRIENDLY LANDSCAPE"
            break
        case rm_cave7:
            rmname = "WORKING UNSAFE"
            break
        case rm_cave8:
            rmname = "ROUNDABOUT"
            break
        case rm_cave9:
            rmname = "OUTLET HELL"
            break
        case rm_cave_secret1:
            rmname = "FOOD SAFE"
            break
        case rm_cave_secret2:
            rmname = "EXECUTION OF HARDHATS"
            break
        case rm_cave_secret3:
            rmname = "WELL HIDDEN SECRET"
            break
        case rm_resort1:
            rmname = "INTERNSHIP ON A VACATION"
            break
        case rm_resort2:
            rmname = "HOTEL DISTURBANCE"
            break
        case rm_resort3:
            rmname = "HERE IS THE LOBBY"
            break
        case rm_resort4:
            rmname = "OUT IN THE WILD"
            break
        case rm_resort5:
            rmname = "PALM FOREST"
            break
        case rm_resort6:
            rmname = "SODY POND"
            break
        case rm_resort7:
            rmname = "EERY DAMPNESS"
            break
        case rm_resort7a:
            rmname = "UNDERWATER GUARDIANS"
            break
        case rm_resort8:
            rmname = "OPEN WATERS"
            break
        case rm_resort9:
            rmname = "THE PILLAR'S CAVE"
            break
        case rm_resort_secret1:
            rmname = "A CASUAL RABBIT HOMICIDE"
            break
        case rm_resort_secret2:
            rmname = "A NIFTY RIDE"
            break
        case rm_resort_secret3:
            rmname = "THE FISHING"
            break
        case rm_hub:
            rmname = "OLD HUB"
            break
        case rm_hub_floor1:
            rmname = "WORLD 1"
            break
        case rm_hub_floor1_secret1:
            rmname = "THE OLD AND THE UGLY"
            break
        case rm_hub_floor2:
            rmname = "WORLD 2"
            break
        default:
            rmname = ""
            break
    }

    rmname_y = 0
    rmname_time = 0
}
