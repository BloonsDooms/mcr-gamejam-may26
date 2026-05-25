tag @n[tag=dome] add this

kill @e[tag=dome_hookpoints,distance=..13]

execute at @n[tag=this,tag=dome,tag=level0] run place template game:domes/dome_0_greenhouse ~-6 ~ ~-6
execute at @n[tag=this,tag=dome,tag=level0] run fill ~-8 ~ ~-8 ~8 ~ ~8 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level0] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a


execute at @n[tag=this,tag=dome,tag=level1] run place template game:domes/dome_1_greenhouse ~-8 ~ ~-8
execute at @n[tag=this,tag=dome,tag=level1] run fill ~-9 ~ ~-9 ~9 ~ ~9 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level1] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a


execute at @n[tag=this,tag=dome,tag=level2] run place template game:domes/dome_2_greenhouse ~-9 ~ ~-9
execute at @n[tag=this,tag=dome,tag=level2] run fill ~-10 ~ ~-10 ~10 ~ ~10 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level2] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

execute at @n[tag=this,tag=dome,tag=level3] run place template game:domes/dome_3_greenhouse ~-11 ~ ~-11
execute at @n[tag=this,tag=dome,tag=level3] run fill ~-12 ~ ~-12 ~12 ~ ~12 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level3] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a


tag @n[tag=this] remove drill
tag @n[tag=this] add greenhouse
tag @n[tag=this] remove lab



tag @e remove this

execute at @n[tag=dome] run function game:objects/dome/connect_neighboring_domes