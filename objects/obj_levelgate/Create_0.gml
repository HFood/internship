cursid = -4
depth = 20
rm = -4
rmname = "NAN"
timertofade = 70
oj = 0
clos = 0
_secrets = -1
_score = 0
ini_open(global.savedata_ini)
tut = ini_read_real("story", "entrancedone", 0)
tutorial_done = ini_read_real("story", "tutorial_done", 0)
ini_close()
instance_create_depth(x, (y - 16), 0, obj_levelgate_trigger)
