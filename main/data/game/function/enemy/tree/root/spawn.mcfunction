#t2 = root #

particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0 10 force
tp @s ~ ~ ~ facing entity @n[type=villager]
execute at @s run tp @s ~ ~ ~ ~ 0

# random
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @s run tp @s ~ ~ ~ ~22 0
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @s run tp @s ~ ~ ~ ~22 0
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @s run tp @s ~ ~ ~ ~-22 0
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @s run tp @s ~ ~ ~ ~-22 0

#move and place block
tag @s remove up
execute at @s unless block ~ ~-1 ~ #game:root_replace unless block ^ ^ ^1 #game:root_replace run tag @s add up
execute at @s[tag=up] run summon marker ~ ~1 ~ {Tags:["root","new"]}
execute at @s[tag=up] as @n[tag=root,tag=new] at @s unless block ~ ~-1 ~ #game:root_replace positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tp @s ~ ~ ~ ~ ~
execute at @s[tag=!up] unless block ~ ~-1 ~ #game:root_replace positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["root","new"]}
execute at @s[tag=!up] if block ~ ~-1 ~ #game:root_replace run summon marker ~ ~ ~ {Tags:["root","new"]}
execute as @n[tag=root,tag=new] at @s if block ~ ~-1 ~ #game:root_replace run tp @s ~ ~-1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s if block ~ ~ ~ oak_wood run tp @s ~ ~1 ~ ~ ~
execute as @n[tag=root,tag=new] at @s run setblock ~ ~ ~ oak_wood

#thorns
execute if entity @n[tag=me,tag=thorns] run tag @n[tag=root,tag=new] add thorns
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=thorns] run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:oak_button[facing=north,powered=true] replace air
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=thorns] run fill ~ ~ ~1 ~ ~ ~1 minecraft:oak_button[facing=south,powered=true] replace air
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=thorns] run fill ~1 ~ ~ ~1 ~ ~ minecraft:oak_button[facing=east,powered=true] replace air
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=thorns] run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:oak_button[facing=west,powered=true] replace air
execute store result score .rand .calc run random value 0..1
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=thorns] run fill ~ ~1 ~ ~ ~1 ~ minecraft:oak_button[face=floor,powered=true] replace air
execute store result score .rand .calc run random value 0..3
execute if score .rand .calc matches 1 run execute at @n[tag=root,tag=new,tag=spores] run fill ~ ~1 ~ ~ ~1 ~ minecraft:moss_carpet replace #game:root_replace

execute store result score @n[tag=root,tag=new] object.id run scoreboard players add #id object.id 1
scoreboard players operation @n[tag=root,tag=new] parent.id = @n[tag=me] object.id
scoreboard players operation @n[tag=root,tag=new] t2 = @s t2
scoreboard players add @n[tag=root,tag=new] t2 1

# stop if near destination
execute as @n[tag=root,tag=new] at @s if entity @e[type=villager,distance=..5] run tag @n[tag=me] add stop
execute as @n[tag=root,tag=new] at @s if block ~ 49 ~ diamond_block run tag @n[tag=me] add stop

tag @n[tag=root,tag=new] remove new