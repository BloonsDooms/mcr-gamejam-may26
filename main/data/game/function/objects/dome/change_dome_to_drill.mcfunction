tag @n[tag=dome] add this

kill @e[tag=dome_hookpoints,distance=..13]

execute at @n[tag=this,tag=dome,tag=level0] run place template game:domes/dome_0_drill ~-6 ~-7 ~-6
execute at @n[tag=this,tag=dome,tag=level0] run fill ~-8 ~ ~-8 ~8 ~ ~8 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level0] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a
execute at @n[tag=this,tag=dome,tag=level0] run summon marker ~ ~2 ~-1 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level0] run summon marker ~ ~2 ~1 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level0] run summon marker ~ ~-5 ~ {Tags:["dome_hookpoints","mine_drill"]}

execute at @n[tag=this,tag=dome,tag=level1] run place template game:domes/dome_1_drill ~-8 ~-7 ~-8
execute at @n[tag=this,tag=dome,tag=level1] run fill ~-9 ~ ~-9 ~9 ~ ~9 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level1] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a
execute at @n[tag=this,tag=dome,tag=level1] run summon marker ~ ~2 ~-1 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level1] run summon marker ~ ~2 ~1 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level1] run summon marker ~ ~-5 ~ {Tags:["dome_hookpoints","mine_drill"]}

execute at @n[tag=this,tag=dome,tag=level2] run place template game:domes/dome_2_drill ~-9 ~-7 ~-9
execute at @n[tag=this,tag=dome,tag=level2] run fill ~-10 ~ ~-10 ~10 ~ ~10 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level2] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a
execute at @n[tag=this,tag=dome,tag=level2] run summon marker ~-4 ~2 ~7 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level2] run summon marker ~-5 ~2 ~7 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level2] run summon marker ~-7 ~2 ~4 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level2] run summon marker ~-7 ~2 ~5 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level2] run summon marker ~2 ~-5 ~-2 {Tags:["dome_hookpoints","mine_drill"]}

execute at @n[tag=this,tag=dome,tag=level3] run place template game:domes/dome_3_drill ~-11 ~-7 ~-11
execute at @n[tag=this,tag=dome,tag=level3] run fill ~-12 ~ ~-12 ~12 ~ ~12 cherry_wood replace air
execute at @n[tag=this,tag=dome,tag=level3] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a
execute at @n[tag=this,tag=dome,tag=level3] run summon marker ~-6 ~2 ~8 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level3] run summon marker ~-7 ~2 ~8 {Tags:["dome_hookpoints","mine_input"]}
execute at @n[tag=this,tag=dome,tag=level3] run summon marker ~-8 ~2 ~6 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level3] run summon marker ~-8 ~2 ~7 {Tags:["dome_hookpoints","mine_output"]}
execute at @n[tag=this,tag=dome,tag=level3] run summon marker ~2 ~-5 ~-2 {Tags:["dome_hookpoints","mine_drill"]}

tag @n[tag=this] remove lab
tag @n[tag=this] remove greenhouse
tag @n[tag=this] add drill

tag @e remove this

execute at @n[tag=dome] run function game:objects/dome/connect_neighboring_domes