function scr_enemy_create() //gml_Script_scr_enemy_create
{
    depth = 2
    hp = 1
    add_hp = 0
    invincible = 0
    hsp = 0
    vsp = 0
    stuntime = 0
    deathside = 0
    state = "normal"
    stun_delay = 0
    grounded = 0
    platform_grounded = 0
    ghost_cd = 0
    scaretime = 0
    stunxsc = 1
    stunysc = 1
    hitfreeze = 0
    machdeath = 0
    blink = 0
    nocombo = 0
    machstunned = 0
    if (object_index != obj_fridge)
    {
        with (instance_create_depth(x, y, 1, obj_headhitbox))
        {
            other.head_id = id
            targ = other.id
        }
    }
    curx = 0
    cury = 0
    particle_delay = 0
    heat_delay = 80
    baddies_tackled = 0
    reaction_time = 15
    arena_boy = 0
}

