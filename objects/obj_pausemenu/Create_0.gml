depth = -11
select1 = 1
select2 = 1
section = "menu"
pause_surf = -1
pause_surfbuffer = -1
scr_random()
ini_open(global.savedata_ini)
vol_gen = ini_read_real("options", "vol_gen", 100)
vol_sfx = ini_read_real("options", "vol_sfx", 50)
vol_mu = ini_read_real("options", "vol_mu", 50)
fullscreen = ini_read_real("options", "fullscreen", 0)
ini_close()
