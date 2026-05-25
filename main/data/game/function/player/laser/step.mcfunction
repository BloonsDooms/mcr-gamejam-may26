#
particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove .step .calc 1

execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=zombie,dx=0,dy=0,dz=0] add laser_damage

execute unless block ~ ~ ~ air if block ~ ~ ~ #game:fire_break run summon marker ~ ~ ~ {Tags:["fire"]}
execute unless block ~ ~ ~ air if block ~ ~ ~ #game:hard_fire align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,tag=fire_leave] run summon marker ~ ~ ~ {Tags:["fire_leave"]}
execute unless block ~ ~ ~ air if block ~ ~ ~ #game:hard_fire align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[distance=..0.1,tag=fire_leave] run scoreboard players add @e[distance=..0.1,tag=fire_leave] t2 1
execute unless block ~ ~ ~ air run particle lava ^ ^ ^-0.2 0 0 0 0 1 force
execute unless block ~ ~ ~ air run scoreboard players set .step .calc 0

execute if score .step .calc matches 1.. positioned ^ ^ ^.1 run function game:player/laser/step