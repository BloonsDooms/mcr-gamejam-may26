## new dome code
# domes are blocks as well as a marker at the center (plus additional markers/item displays for doors)
# always aligned on a grid, which the center of each dome is aligned upon.
# each dome takes up a 27^2 block area, regardless of the size.

summon marker ~13.5 64 ~13.5 {Tags:["init","upgradeable","dome","level0"]}

execute as @e[tag=dome,tag=init,limit=1] store result score @s dome.x run data get entity @s Pos[0] 0.0384615384615
execute as @e[tag=dome,tag=init,limit=1] store result score @s dome.z run data get entity @s Pos[2] 0.0384615384615

execute store result entity @e[tag=dome,tag=init,limit=1] Pos[0] double 26 run scoreboard players get @e[tag=dome,tag=init,limit=1] dome.x
execute store result entity @e[tag=dome,tag=init,limit=1] Pos[2] double 26 run scoreboard players get @e[tag=dome,tag=init,limit=1] dome.z

execute as @e[tag=dome,tag=init,limit=1] at @s align xyz run tp @s ~.5 ~.5 ~.5

execute at @e[tag=dome,tag=init,limit=1] run place template game:domes/dome_0 ~-6 ~ ~-6
# fix the ground
execute at @e[tag=dome,tag=init,limit=1] run fill ~-8 ~ ~-8 ~8 ~ ~8 stone replace air

execute at @e[tag=dome,tag=init,limit=1] run particle explosion_emitter ~ ~3 ~ 0 0 0 1 1 force @a


execute at @n[tag=dome,tag=init] run place template game:domes/dome_0_helper ~-7 ~-15 ~-7

execute at @n[tag=dome,tag=init] unless entity @n[type=villager,distance=..2] run summon villager ~ ~15 ~ {NoAI:1b,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Silent:1b}

function game:objects/dome/connect_neighboring_domes

tag @e remove init