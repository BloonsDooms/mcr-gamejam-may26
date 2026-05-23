tag @e[tag=root] remove saw
execute at @s as @e[tag=root,distance=..4] at @s if block ~ ~1 ~ #game:root_replace run tag @s add saw

execute at @s positioned ~ ~-1.5 ~ run tp @s @e[tag=root,limit=1,sort=nearest,distance=..6,tag=saw]
execute at @s run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~

execute at @s run setblock ~ ~ ~ air

data merge entity @s {NoAI:1b,Invulnerable:1b}


execute store result score @s object.id run scoreboard players add #id object.id 1

#
tag @s add spawn