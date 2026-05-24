execute at @s if block ~ ~-1 ~ oak_leaves run tp ~ ~-1 ~
execute at @s if block ~ ~-1 ~ oak_leaves run tp ~ ~-1 ~

tag @e[type=villager] remove gt1
#tag @e[type=villager] remove gt2
tag @e[type=villager] remove gt_t

tag @e[type=villager,sort=nearest,limit=3] add gt_t
tag @e[type=villager,sort=random,limit=1] add gt1
#tag @e[type=villager,sort=random,limit=1] add gt2

execute at @s run tp @s ~ ~ ~ facing entity @n[tag=gt1]
execute at @s run tp @s ~ ~ ~ ~ 0

execute store result score .rand .calc run random value 0..4
execute at @s if score .rand .calc matches 0 run tp @s ~ ~ ~ ~-45 0
execute at @s if score .rand .calc matches 1 run tp @s ~ ~ ~ ~-22.5 0
execute at @s if score .rand .calc matches 2 run tp @s ~ ~ ~ ~45 0
execute at @s if score .rand .calc matches 3 run tp @s ~ ~ ~ ~22.5 0

execute at @s positioned ~ 17 ~ positioned ^ ^ ^1 if block ~ ~ ~ moss_carpet run setblock ~ ~ ~ oak_leaves
execute at @s positioned ~ 17 ~ positioned ^ ^ ^2 if block ~ ~ ~ moss_carpet run setblock ~ ~ ~ oak_leaves
execute at @s positioned ~ 17 ~ positioned ^ ^ ^3 if block ~ ~ ~ moss_carpet run setblock ~ ~ ~ oak_leaves
execute at @s positioned ~ 17 ~ positioned ^ ^ ^1 if block ~ ~ ~ air run setblock ~ ~ ~ moss_carpet
execute at @s positioned ~ 17 ~ positioned ^ ^ ^2 if block ~ ~ ~ air run setblock ~ ~ ~ moss_carpet
execute at @s positioned ~ 17 ~ positioned ^ ^ ^3 if block ~ ~ ~ air run setblock ~ ~ ~ moss_carpet