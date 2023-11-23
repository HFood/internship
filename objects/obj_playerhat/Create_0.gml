depth = 10
targ = 160
ini_open(global.savedata_ini)
hat = ini_read_real("story", "hat_current", 0)
ini_close()
scr_random()
unus_rot1 = 0
unus_rot2 = 90
unus_col1 = 0
unus_col2 = 122
if (instance_number(object_index) > 1)
    instance_destroy()
