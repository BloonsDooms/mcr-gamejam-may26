particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0 10 force
tp @s ~ ~ ~ facing entity @n[type=villager]
execute at @s run tp @s ~ ~ ~ ~ 0
tag @s remove up
execute at @s unless block ~ ~-1 ~ air unless block ^ ^ ^1 air run tag @s add up
execute at @s[tag=up] run summon marker ~ ~1 ~ {Tags:["root","new"]}
execute at @s[tag=!up] unless block ~ ~-1 ~ air positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["root","new"]}
execute at @s[tag=!up] if block ~ ~-1 ~ air run summon marker ~ ~ ~ {Tags:["root","new"]}
execute as @n[tag=root,tag=new] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s run setblock ~ ~ ~ oak_wood
#t2 = root #

execute store result score @n[tag=root,tag=new] object.id run scoreboard players add #id object.id 1
scoreboard players operation @n[tag=root,tag=new] parent.id = @n[tag=me] object.id
scoreboard players operation @n[tag=root,tag=new] t2 = @s t2
scoreboard players add @n[tag=root,tag=new] t2 1

tag @n[tag=root,tag=new] remove new