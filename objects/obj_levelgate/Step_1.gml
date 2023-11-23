if (_secrets == -1)
{
    switch rm
    {
        case 3:
            rmname = "TUTORIAL"
            break
        case 27:
            rmname = "ROOFTOPS"
            break
        case 39:
            rmname = "THE CHEDDAR TEMPLE"
            break
        case 53:
            rmname = "BREADCRUST CAVERN"
            break
        case 67:
            rmname = "LA TOMATINO RESORT"
            break
        case 72:
            rmname = "URBAN"
            break
        case 16:
            rmname = "CRATEBURG"
            break
        case 90:
            rmname = "CHRISTMAS DINNER"
            break
        case 123:
            rmname = "CIRCUS"
            break
        case 84:
            rmname = "TRAIN MADNESS"
            break
        case 156:
            rmname = "SHIP (WIP)"
            break
    }

    if (rm == 27)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "rooftop", 0)
        _treasure = ini_read_real("treasure", "rooftop", 0)
        _score = ini_read_real("score", "rooftop", 0)
        ini_close()
    }
    else if (rm == 39)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "ancient", 0)
        _treasure = ini_read_real("treasure", "ancient", 0)
        _score = ini_read_real("score", "ancient", 0)
        ini_close()
    }
    else if (rm == 16)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "crateburg", 0)
        _treasure = ini_read_real("treasure", "crateburg", 0)
        _score = ini_read_real("score", "crateburg", 0)
        ini_close()
    }
    else if (rm == 53)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "cave", 0)
        _treasure = ini_read_real("treasure", "cave", 0)
        _score = ini_read_real("score", "cave", 0)
        ini_close()
    }
    else if (rm == 67)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "resort", 0)
        _treasure = ini_read_real("treasure", "resort", 0)
        _score = ini_read_real("score", "resort", 0)
        ini_close()
    }
    else if (rm == 72)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "urban", 0)
        _treasure = ini_read_real("treasure", "urban", 0)
        _score = ini_read_real("score", "urban", 0)
        ini_close()
    }
    else if (rm == 90)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "freezer", 0)
        _treasure = ini_read_real("treasure", "freezer", 0)
        _score = ini_read_real("score", "freezer", 0)
        ini_close()
    }
    else if (rm == 123)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "circus", 0)
        _treasure = ini_read_real("treasure", "circus", 0)
        _score = ini_read_real("score", "circus", 0)
        ini_close()
    }
    else if (rm == 84)
    {
        ini_open(global.savedata_ini)
        _secrets = ini_read_real("secrets", "train", 0)
        _treasure = ini_read_real("treasure", "train", 0)
        _score = ini_read_real("score", "train", 0)
        ini_close()
    }
    else
    {
        _secrets = 0
        _treasure = 0
        _score = 0
    }
}
