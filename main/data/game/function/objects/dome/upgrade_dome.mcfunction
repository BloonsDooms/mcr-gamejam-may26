# nearest dome to upgrade
tag @n[tag=dome,distance=..20] add this




execute at @n[tag=this,tag=dome,tag=level0] run place template game:domes/dome_1 ~-8 ~ ~-8
execute at @n[tag=this,tag=dome,tag=level0] run fill ~-9 ~ ~-9 ~9 ~ ~9 stone replace air
execute at @n[tag=this,tag=dome,tag=level0] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

execute at @n[tag=this,tag=dome,tag=level1] run place template game:domes/dome_2 ~-9 ~ ~-9
execute at @n[tag=this,tag=dome,tag=level1] run fill ~-10 ~ ~-10 ~10 ~ ~10 stone replace air
execute at @n[tag=this,tag=dome,tag=level1] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a

execute at @n[tag=this,tag=dome,tag=level2] run place template game:domes/dome_3 ~-11 ~ ~-11
execute at @n[tag=this,tag=dome,tag=level2] run fill ~-12 ~ ~-12 ~12 ~ ~12 stone replace air
execute at @n[tag=this,tag=dome,tag=level2] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a



tag @n[tag=this,tag=level2] add level3
tag @n[tag=this,tag=level1] add level2
tag @n[tag=this,tag=level0] add level1

tag @n[tag=this,tag=level3,tag=level2] remove level2
tag @n[tag=this,tag=level2,tag=level1] remove level1
tag @n[tag=this,tag=level1,tag=level0] remove level0

tag @n remove this

execute at @n[tag=dome,distance=..20] run function game:objects/dome/connect_neighboring_domes