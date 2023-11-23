function scr_enemy_normal() //gml_Script_scr_enemy_normal
{
    if (object_index == obj_tuna)
    {
        switch global.heat
        {
            case 3:
                hsp = (image_xscale * 3)
                break
            case 2:
                hsp = (image_xscale * 2.5)
                break
            case 1:
                hsp = (image_xscale * 2)
                break
        }

        vsp = 0
        sprite_index = spr_tuna_walk
        if place_meeting((x + image_xscale), y, obj_solid)
            image_xscale = (-image_xscale)
        if collision_rectangle((x - 192), (y - 64), (x + 192), (y + 64), obj_player, 0, 1)
        {
            if (((obj_player.state == "tackle2" || obj_player.state == "sodaride" || obj_player.state == "jetpack_run" || obj_player.state == "jetpack_dash") && obj_player.crouch == 0) || (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll") || obj_player.state == "snowball")
            {
                vsp = -7
                if (obj_player.x < x)
                    image_xscale = -1
                else
                    image_xscale = 1
                scaretime = 80
                state = "scared"
            }
        }
    }
    else if (object_index == obj_cocobomb)
    {
        hsp = burgercop_spd
        if (sign(burgercop_spd) != image_xscale)
            sprite_index = spr_cocobomb_drift
        else
            sprite_index = spr_cocobomb_walk
        if (x < obj_player.x)
        {
            burgercop_spd += 0.5
            image_xscale = 1
        }
        else
        {
            burgercop_spd -= 0.5
            image_xscale = -1
        }
        if (collision_line((x - 32), y, (x + 32), y, obj_player, false, true) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
        {
            image_index = 0
            state = "explode"
        }
        if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
        {
            with (instance_create_depth((x + (image_xscale * 32)), y, -1, obj_effecttemporary))
                sprite_index = spr_effect5
            burgercop_spd = (5 * (-image_xscale))
            vsp = -4
        }
        burgercop_spd = clamp(burgercop_spd, -14, 14)
    }
    else if (object_index == obj_burgercop)
    {
        hsp = burgercop_spd
        sprite_index = spr_burgercop_walk
        if (x < obj_player.x)
        {
            burgercop_spd += 0.2
            image_xscale = 1
        }
        else
        {
            burgercop_spd -= 0.2
            image_xscale = -1
        }
        if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
        {
            with (instance_create_depth((x + (image_xscale * 32)), y, -1, obj_effecttemporary))
                sprite_index = spr_effect5
            stunxsc = 1.25
            stunysc = 0.75
            scaretime = 0
            stuntime = 30
            hsp = (5 * (-image_xscale))
            vsp = -4
            state = "stun"
            stun_delay = 8
            burgercop_spd = 0
        }
        burgercop_spd = clamp(burgercop_spd, -8, 8)
    }
    else
    {
        if (object_index == obj_builder || object_index == obj_cheeser || object_index == obj_cheeseneck || object_index == obj_bandit || object_index == obj_magician)
        {
            if (throw_delay > 0)
                throw_delay--
        }
        if grounded
        {
            if (global.heat == 3)
            {
                if (particle_delay > 0)
                    particle_delay--
                else
                {
                    with (instance_create_depth(x, (y + (sprite_height / 2)), 20, obj_effecttemporary))
                    {
                        sprite_index = spr_effect1
                        image_xscale = other.image_xscale
                    }
                    particle_delay = 10
                }
            }
            if (object_index == obj_cheeseneck)
            {
                switch global.heat
                {
                    case 3:
                        hsp = (image_xscale * 7)
                        break
                    case 2:
                        hsp = (image_xscale * 5.5)
                        break
                    case 1:
                        hsp = (image_xscale * 4)
                        break
                }

            }
            else
            {
                switch global.heat
                {
                    case 3:
                        hsp = (image_xscale * 5)
                        break
                    case 2:
                        hsp = (image_xscale * 3.5)
                        break
                    case 1:
                        hsp = (image_xscale * 2)
                        break
                }

            }
        }
        else
            hsp = 0
        sprite_index = asset_get_index((("spr_" + string(enem_type)) + "_walk"))
        if (object_index == obj_cheeseneck)
        {
            if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))) && grounded)
                image_xscale = (-image_xscale)
            if (image_xscale == 1 && (!(place_meeting(bbox_right, (y + 1), obj_platform))) && (!(place_meeting(bbox_right, (y + 1), obj_solid))) && (!(place_meeting(bbox_right, bbox_bottom, obj_slope))) && (!(place_meeting(x, (y + 1), obj_slope))))
                image_xscale = (-image_xscale)
            if (image_xscale == -1 && (!(place_meeting(bbox_left, (y + 1), obj_platform))) && (!(place_meeting(bbox_left, (y + 1), obj_solid))) && (!(place_meeting(bbox_left, bbox_bottom, obj_slope))) && (!(place_meeting(x, (y + 1), obj_slope))))
                image_xscale = (-image_xscale)
            if ((image_xscale == 1 && bbox_right >= room_width) || (image_xscale == -1 && bbox_left <= 0))
                image_xscale = (-image_xscale)
        }
        else if grounded
        {
            if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))) && grounded)
            {
                image_index = 0
                state = "turn"
            }
            if (image_xscale == 1 && (!(place_meeting(bbox_right, (y + 1), obj_platform))) && (!(place_meeting(bbox_right, (y + 1), obj_solid))) && (!(place_meeting(bbox_right, bbox_bottom, obj_slope))) && (!(place_meeting(x, (y + 1), obj_slope))))
            {
                image_index = 0
                state = "turn"
            }
            if (image_xscale == -1 && (!(place_meeting(bbox_left, (y + 1), obj_platform))) && (!(place_meeting(bbox_left, (y + 1), obj_solid))) && (!(place_meeting(bbox_left, bbox_bottom, obj_slope))) && (!(place_meeting(x, (y + 1), obj_slope))))
            {
                image_index = 0
                state = "turn"
            }
            if ((image_xscale == 1 && bbox_right >= room_width) || (image_xscale == -1 && bbox_left <= 0))
            {
                image_index = 0
                state = "turn"
            }
        }
        if (collision_rectangle((x - 192), (y - 64), (x + 192), (y + 64), obj_player, 0, 1) && object_index != obj_dummy)
        {
            var _player = collision_rectangle((x - 192), (y - 64), (x + 192), (y + 64), obj_player, 0, 1).object_index
            if (((_player.state == "tackle2" || _player.state == "sodaride" || _player.state == "jetpack_run" || _player.state == "jetpack_dash") && _player.crouch == 0) || (_player.state == "cheesed" && _player.cheesed_state == "roll") || _player.state == "superjump_kick")
            {
                vsp = -7
                if (_player.x < x)
                    image_xscale = -1
                else
                    image_xscale = 1
                scaretime = 80
                state = "scared"
            }
        }
    }
}

