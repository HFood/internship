cursid = -4
ini_open(global.savedata_ini)
hat_array_selected = ini_read_real("story", "hat_current", 0)
hat_act = "none"
garg = 0
if (ini_read_real("story", "cylindergot", 0) == 1)
    hat_cyli = 1
else
    hat_cyli = 0
if (ini_read_real("score", "rooftop", 0) >= ini_read_real("srank", "rooftop", 0))
    hat_roof = 1
else
    hat_roof = 0
if (ini_read_real("score", "crateburg", 0) >= ini_read_real("srank", "crateburg", 0))
    hat_crat = 1
else
    hat_crat = 0
if (ini_read_real("score", "ancient", 0) >= ini_read_real("srank", "ancient", 0))
    hat_anci = 1
else
    hat_anci = 0
if (ini_read_real("score", "cave", 0) >= ini_read_real("srank", "cave", 0))
    hat_cave = 1
else
    hat_cave = 0
if (ini_read_real("score", "resort", 0) >= ini_read_real("srank", "resort", 0))
    hat_reso = 1
else
    hat_reso = 0
if (ini_read_real("score", "funhouse", 0) >= ini_read_real("srank", "funhouse", 0))
    hat_funh = 1
else
    hat_funh = 0
if (ini_read_real("score", "circus", 0) >= ini_read_real("srank", "circus", 0))
    hat_circ = 1
else
    hat_circ = 0
if (ini_read_real("score", "train", 0) >= ini_read_real("srank", "train", 0))
    hat_trai = 1
else
    hat_trai = 0
hat_number = ((((((((hat_cyli + hat_roof) + hat_crat) + hat_anci) + hat_cave) + hat_reso) + hat_funh) + hat_circ) + hat_trai)
ini_close()
if (hat_number == 0)
    instance_destroy()
