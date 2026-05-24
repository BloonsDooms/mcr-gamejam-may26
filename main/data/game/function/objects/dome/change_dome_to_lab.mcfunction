tag @n[tag=dome] add this

# only two levels of lab

kill @e[tag=dome_hookpoints,distance=..13]

execute at @n[tag=this,tag=dome,tag=level0] run place template game:domes/dome_0_lab ~-8 ~ ~-8
execute at @n[tag=this,tag=dome,tag=level0] run fill ~-9 ~ ~-9 ~9 ~ ~9 stone replace air
execute at @n[tag=this,tag=dome,tag=level0] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

execute at @n[tag=this,tag=dome,tag=level1] run place template game:domes/dome_1_lab ~-9 ~ ~-9
execute at @n[tag=this,tag=dome,tag=level1] run fill ~-10 ~ ~-10 ~10 ~ ~10 stone replace air
execute at @n[tag=this,tag=dome,tag=level1] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

#execute at @n[tag=this,tag=dome,tag=level2] run place template game:domes/dome_3 ~-11 ~ ~-11
#execute at @n[tag=this,tag=dome,tag=level2] run fill ~-12 ~ ~-12 ~12 ~ ~12 stone replace air
#execute at @n[tag=this,tag=dome,tag=level2] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

tag @n[tag=this] remove drill
tag @n[tag=this] remove greenhouse
tag @n[tag=this] add lab

tag @e remove this

execute at @n[tag=dome] run function game:objects/dome/connect_neighboring_domes