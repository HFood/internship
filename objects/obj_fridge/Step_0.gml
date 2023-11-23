if (hitfreeze > 0)
{
    scr_enemy_hitfreeze()
    hitfreeze--
}
if ((!instance_exists(spawned_id)) && collision_rectangle((x - 384), (y - 256), (x + 384), (y + 256), obj_player, 0, 1) && hitfreeze == 0)
{
    if (timer > 0)
    {
        timer--
        if (timer == 0)
        {
            image_index = 0
            sprite_index = spr_fridge_spawn
        }
    }
    else if (image_index >= 5 && createn == 0)
    {
        var cam = view_camera[0]
        var x1 = camera_get_view_x(cam)
        var y1 = camera_get_view_y(cam)
        var x2 = (x1 + camera_get_view_width(cam))
        var y2 = (y1 + camera_get_view_height(cam))
        if point_in_rectangle(x, y, x1, y1, x2, y2)
            scr_sound(sfx_projectile)
        scr_effectpoof()
        with (instance_create_depth((x + (image_xscale * 64)), y, 2, choose(obj_cheeser, obj_bread, obj_knight, obj_olive, obj_slipmato)))
        {
            image_xscale = other.image_xscale
            nocombo = 1
            state = "stun"
            other.spawned_id = id
            blink = 8
            stuntime = 40
            stun_delay = 8
        }
        timer = 80
        createn = 1
    }
}
if ((place_meeting((x + 1), (y + 1), obj_player) || place_meeting((x - 1), (y - 1), obj_player)) && hitfreeze == 0 && hp > 0)
{
    if ((obj_player.state == "tackle2" || obj_player.state == "jetpack_run" || obj_player.state == "jetpack_dash" || obj_player.state == "sodaride" || obj_player.state == "walljump" || obj_player.state == "tumble" || obj_player.state == "snowball") && ((obj_player.x < x && obj_player.image_xscale == 1) || (obj_player.x > x && obj_player.image_xscale == -1)))
    {
        with (instance_create_depth(x, y, 10, obj_effecttemporary))
        {
            image_xscale = 2
            image_yscale = 2
            sprite_index = spr_effect2
        }
        with (obj_player)
        {
            jumpspr = spr_sauce
            rolltotackle = 1
            image_index = 0
            hitfreeze = 3
            tacklehit = 0
            if ((!grounded) && other.bbox_top > y)
            {
                vsp = -6
                tackle_airhit = 0
            }
        }
        if (obj_player.x < x && obj_player.image_xscale == 1)
            deathside = 1
        else if (obj_player.image_xscale == -1)
            deathside = -1
        else
            deathside = 1
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        hp--
        machdeath = 1
    }
    if (obj_player.state == "wallrun" || obj_player.state == "crouchslide")
    {
        with (instance_create_depth(x, y, 10, obj_effecttemporary))
        {
            image_xscale = 2
            image_yscale = 2
            sprite_index = spr_effect2
        }
        with (obj_player)
        {
            image_index = 0
            hitfreeze = 3
            tacklehit = 0
        }
        if (obj_player.x < x && obj_player.image_xscale == 1)
            deathside = 1
        else if (obj_player.image_xscale == -1)
            deathside = -1
        else
            deathside = 1
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        hp--
        machdeath = 1
    }
    if (obj_player.state == "bodyslam" && obj_player.vsp > 0)
    {
        with (obj_player)
            hitfreeze = 3
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        if (obj_player.x < x)
            deathside = 1
        else
            deathside = -1
        hp--
    }
    if (obj_player.state == "uppunch" && obj_player.vsp < 0)
    {
        with (obj_player)
            hitfreeze = 3
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        if (obj_player.x < x)
            deathside = 1
        else
            deathside = -1
        hp--
    }
    if (obj_player.state == "slip" || obj_player.state == "superjump" || obj_player.state == "superjump_kick")
    {
        with (obj_player)
            hitfreeze = 3
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        if (obj_player.x < x)
            deathside = 1
        else
            deathside = -1
        hp--
    }
    if (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll")
    {
        with (obj_player)
            hitfreeze = 3
        state = "hitfreeze"
        curx = x
        cury = y
        hitfreeze = 3
        if (obj_player.x < x)
            deathside = 1
        else
            deathside = -1
        hp--
    }
}
if (hp < 1 && hitfreeze <= 0)
    scr_enemy_death()
