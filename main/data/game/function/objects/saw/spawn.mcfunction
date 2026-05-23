tp @s @e[tag=root,limit=1,sort=nearest]
execute at @s run tp @s ~ ~1 ~
data merge entity @s {NoAI:1b,Invulnerable:1b}


execute store result score @s object.id run scoreboard players add #id object.id 1

#
tag @s add spawn