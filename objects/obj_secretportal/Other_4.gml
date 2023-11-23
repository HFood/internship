if (room == rm_hub)
    ds_list_delete(global.saveroom, id)
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
if (insecret == 0)
{
    switch global.level
    {
        case "rooftop":
            mus = 54
            break
        case "ancient":
            mus = 120
            break
        case "cave":
            mus = 71
            break
        case "resort":
            mus = 95
            break
        case "urban":
            mus = 54
            break
        case "crateburg":
            mus = 54
            break
        case "freezer":
            mus = 54
            break
    }

}
