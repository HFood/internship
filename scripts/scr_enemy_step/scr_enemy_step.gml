function scr_enemy_step() //gml_Script_scr_enemy_step
{
    if (stun_delay > 0)
        stun_delay--
    if (object_index == obj_tuna)
    {
        if (dash_delay > 0)
            dash_delay--
    }
    if (invincible > 0)
        invincible--
    else
        invincible = 0
    if (blink > 0)
        blink--
    if (heat_delay > 0)
        heat_delay--
    if (place_meeting(x, y, obj_player) && stun_delay == 0 && hitfreeze <= 0 && state != "deathtackle" && state != "hitfreeze")
    {
        var _player = instance_place(x, y, obj_player).object_index
        thrown = 0
        if (object_index == obj_cocobomb || object_index == obj_fridge)
        {
        }
        else if (_player.state != "tackleturn" && _player.state != "tackle2" && _player.state != "cheesed" && _player.state != "superjump" && _player.state != "superjump_kick" && _player.state != "sodaride" && _player.state != "bodyslam" && _player.state != "crouchslide" && _player.state != "walljump" && _player.state != "snowball" && other.state != "ghostcheckpoint" && other.state != "onfire")
        {
            with (instance_create_depth((_player.x - (_player.x - x)), (_player.y - (_player.y - y)), -1, obj_effecttemporary))
                sprite_index = spr_effect5
            machstunned = 1
            stunxsc = 1.25
            stunysc = 0.75
            scaretime = 0
            stuntime = 120
            direction = point_direction(_player.x, (_player.y + 24), x, y)
            speed = 1
            if (_player.state == "tackle1")
            {
                scr_basheffect()
                var debris_num = irandom_range(2, 4)
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
                blink = 8
                hsp = (lengthdir_x(speed, direction) * 18)
            }
            else
            {
                machstunned = 0
                scr_1sound(sfx_stun)
                hsp = (lengthdir_x(speed, direction) * 12)
            }
            vsp = (lengthdir_y(speed, direction) * 8)
            speed = 0
            state = "stun"
            stun_delay = 8
            if (_player.x < x)
                image_xscale = -1
            else
                image_xscale = 1
            with (_player)
                walk_acc = 0.2
        }
    }
    if (object_index == obj_olive)
    {
        if (breakdelay > 0)
            breakdelay--
    }
    if (invincible == 0 && state != "deathtackle" && state != "hitfreeze")
    {
        if (place_meeting(x, y, obj_player) && hitfreeze <= 0 && object_index != obj_cocobomb)
        {
            _player = instance_place(x, y, obj_player).object_index
            if (_player.spinning == 1)
            {
                global.combotimer = global.combotimer_full
                with (instance_create_depth((_player.x - (_player.x - x)), (_player.y - (_player.y - y)), -1, obj_effecttemporary))
                    sprite_index = spr_effect20
                scr_sound(sfx_killingblow)
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                y = (_player.y - 32)
                while instance_place(x, y, obj_solid)
                {
                    var sol_id = instance_place(x, y, obj_solid).id
                    if (y < sol_id.y)
                        y--
                    else
                        y++
                }
                if (_player.state != "fishride")
                {
                    with (_player)
                    {
                        if ((!grounded) && global.character == "intern")
                            scr_player_perform_spinhit(1, (-other.deathside), 8, -7, 0)
                        else
                            scr_player_perform_spinhit(1, (-other.deathside), 8, -7, 0)
                    }
                }
                state = "deathtackle"
            }
            if (_player.state == "tackle2" || _player.state == "jetpack_run" || _player.state == "jetpack_dash" || _player.state == "sodaride" || _player.state == "walljump" || _player.state == "tumble" || _player.state == "snowball" || (_player.state == "fishride" && abs(_player.onfire_spd) > 5))
            {
                scr_effectpoof()
                var _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (instance_create_depth(x, y, 10, obj_effecttemporary))
                {
                    image_xscale = 2
                    image_yscale = 2
                    sprite_index = spr_effect2
                }
                with (_player)
                {
                    machspd -= 1
                    machspd = max(machspd, 0)
                    jumpspr = spr_sauce
                    image_index = 0
                    hitfreeze = 5
                    if (crouch == 0 && grounded)
                    {
                        rolltotackle = 1
                        tacklehit = -1
                    }
                }
                if (_player.image_xscale == 1)
                    deathside = 1
                else if (_player.image_xscale == -1)
                    deathside = -1
                else
                    deathside = 1
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                hp--
                machdeath = 1
            }
            if (_player.state == "wallrun" || _player.state == "crouchslide")
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (instance_create_depth(x, y, 10, obj_effecttemporary))
                {
                    image_xscale = 2
                    image_yscale = 2
                    sprite_index = spr_effect2
                }
                with (_player)
                {
                    image_index = 0
                    hitfreeze = 5
                    tacklehit = 0
                }
                if (_player.x < x && _player.image_xscale == 1)
                    deathside = 1
                else if (_player.image_xscale == -1)
                    deathside = -1
                else
                    deathside = 1
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                hp--
                machdeath = 1
            }
            if (_player.state == "bodyslam" && _player.vsp > 0)
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
            if (_player.state == "uppunch" && _player.vsp < 0)
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
            if (_player.state == "slip" || _player.state == "superjump" || _player.state == "superjump_kick")
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
            if (_player.state == "cheesed" && _player.cheesed_state == "roll")
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
            if (_player.state == "cheesed" && _player.cheesed_state == "normal")
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
            if (_player.state == "onfire")
            {
                scr_effectpoof()
                _snd = audio_play_sound(sfx_machhit, 1, false)
                audio_sound_pitch(_snd, random_range(0.96, 0.98))
                with (_player)
                    hitfreeze = 5
                state = "hitfreeze"
                curx = x
                cury = y
                hitfreeze = 5
                if (_player.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
        }
        if (instance_place((x + 1), y, obj_socket) || instance_place((x - 1), y, obj_socket) || instance_place(x, (y + 1), obj_socket) || instance_place(x, (y - 1), obj_socket))
        {
            deathside = choose(-1, 1)
            hp--
        }
        if instance_place(x, y, obj_firehoop)
        {
            var killerobj = instance_place(x, y, obj_firehoop)
            if (killerobj.x < x)
                deathside = 1
            else
                deathside = -1
            hp--
        }
        if instance_place(x, y, obj_mayo)
        {
            killerobj = instance_place(x, y, obj_mayo)
            if (killerobj.x < x)
                deathside = 1
            else
                deathside = -1
            hp--
        }
        if instance_place(x, y, obj_cheesebullet)
        {
            killerobj = instance_place(x, y, obj_cheesebullet)
            if (killerobj.safe == 1)
            {
                if (killerobj.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
        }
        if instance_place(x, y, obj_spell)
        {
            killerobj = instance_place(x, y, obj_spell)
            if (killerobj.safe == 1)
            {
                if (killerobj.x < x)
                    deathside = 1
                else
                    deathside = -1
                hp--
            }
        }
        if (y > (room_height + 50))
        {
            deathside = choose(-1, 1)
            hp--
        }
    }
    if (hp <= 0 && hitfreeze <= 0)
        scr_enemy_death()
    if ((object_index == obj_tuna && (state == "normal" || state == "dash" || state == "dashstart")) || state == "deathtackle")
    {
    }
    else
        scr_gravity()
    if (stunxsc > 1)
        stunxsc -= 0.04
    if (stunysc < 1)
        stunysc += 0.04
}

