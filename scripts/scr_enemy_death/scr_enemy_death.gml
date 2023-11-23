function scr_enemy_death() //gml_Script_scr_enemy_death
{
    scr_comboup(nocombo)
    with (obj_camera)
        shk_strength += 4
    if (add_hp > 0)
    {
        if (hitfreeze != -1)
            scr_sound(sfx_machhit)
        add_hp--
        hp++
        ds_list_add(global.saveroom, id)
        stunxsc = 1.25
        stunysc = 0.75
        scaretime = 0
        stuntime = 120
        direction = point_direction(obj_player.x, (obj_player.y + 24), x, y)
        speed = 1
        var debris_num = irandom_range(3, 5)
        repeat debris_num
        {
            with (instance_create_depth(x, y, depth, obj_debris))
            {
                particles = 0
                hsp = irandom_range(-5, 5)
                vsp = irandom_range(-3, -6)
                sprite_index = spr_bishbash
                image_index = irandom_range(0, 2)
            }
        }
        invincible = 15
        blink = 8
        global.combotimer = global.combotimer_full
        hsp = (lengthdir_x(speed, direction) * 17)
        vsp = (lengthdir_y(speed, direction) * 8)
        speed = 0
        state = "stun"
        stun_delay = 8
        if (obj_player.x < x)
            image_xscale = -1
        else
            image_xscale = 1
        hitfreeze = 0
    }
    else
    {
        if (arena_boy == 1)
            obj_arena.arena_enem_left--
        global.kill_milestone++
        if (hitfreeze != -1)
            scr_sound(sfx_hit)
        instance_destroy(head_id)
        if (object_index == obj_dummy)
        {
            with (instance_create_depth(x, y, -101, obj_debris))
            {
                if (other.deathside != 0)
                    var _ds = other.deathside
                else
                    _ds = choose(-1, 1)
                machdeath = other.machdeath
                particles = 1
                if (other.machdeath == 1)
                {
                    hsp = (obj_player.hsp + (irandom_range(1, 4) * _ds))
                    vsp = irandom_range(-14, -19)
                }
                else
                {
                    hsp = (6 * _ds)
                    vsp = -5
                }
                image_xscale = (-_ds)
                sprite_index = spr_sandwichguy
            }
        }
        else if (object_index == obj_cocobomb)
        {
            debris_num = irandom_range(2, 6)
            repeat debris_num
            {
                with (instance_create_depth(x, y, depth, obj_debris))
                {
                    particles = 0
                    hsp = irandom_range(-5, 5)
                    vsp = irandom_range(-3, -6)
                    sprite_index = spr_cocobomb_debris
                    image_index = irandom_range(0, (image_number - 1))
                }
            }
            instance_create_depth(x, y, 0, obj_explosion)
        }
        else
        {
            if (object_index == obj_tuna)
            {
                if (jim == 1 && global.escape == 0)
                {
                    with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_tvtrigger))
                    {
                        txt = "OH MY GOSH!!! HOW DARE YOU KILL JIM !!???"
                        emo = "t_crazy"
                    }
                }
            }
            with (instance_create_depth(x, y, -101, obj_debris))
            {
                spinning = 1
                spindir = choose(1, -1)
                if (other.deathside != 0)
                    _ds = other.deathside
                else
                    _ds = choose(-1, 1)
                machdeath = other.machdeath
                particles = 1
                if (other.machdeath == 1)
                {
                    spinstrength = irandom_range(10, 60)
                    hsp = (obj_player.hsp + (irandom_range(1, 4) * _ds))
                    vsp = irandom_range(-14, -19)
                }
                else
                {
                    spinstrength = irandom_range(10, 40)
                    hsp = (irandom_range(7, 12) * _ds)
                    vsp = irandom_range(-6, -10)
                }
                image_xscale = (-_ds)
                sprite_index = asset_get_index((("spr_" + string(other.enem_type)) + "_dead"))
            }
        }
        instance_destroy()
    }
    if (global.jetpack_fuel < 5)
        global.jetpack_fuel++
    scr_basheffect()
    debris_num = irandom_range(2, 6)
    repeat debris_num
    {
        with (instance_create_depth(x, y, depth, obj_debris))
        {
            particles = 0
            hsp = irandom_range(-5, 5)
            vsp = irandom_range(-3, -6)
            sprite_index = spr_bishbash
            image_index = irandom_range(0, (image_number - 1))
        }
    }
    if (global.combo >= 10)
        global.heat_meter += 5
    else
        global.heat_meter += global.combo
}

