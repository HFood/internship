depth = -11
select1 = 1
select2 = 1
select3 = 2
manual_select = 0
config_select = 1
configing = 0
section = "menu"
scr_random()
title_color = irandom_range(0, 2)
title_spr = irandom_range(0, 2)
title_y = 0
title_shk_x = 0
title_shk_y = 0
global.developer_mode = 1
ini_open(global.savedata_ini)
vol_gen = ini_read_real("options", "vol_gen", 100)
vol_sfx = ini_read_real("options", "vol_sfx", 50)
vol_mu = ini_read_real("options", "vol_mu", 50)
fullscreen = ini_read_real("options", "fullscreen", 0)
ini_close()
