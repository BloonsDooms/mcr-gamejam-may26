#
execute at @s if block ~ ~-1 ~ oak_leaves run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ oak_leaves run tp @s ~ ~-1 ~
execute store result score .amount .calc run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:spruce_leaves replace minecraft:oak_leaves
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:oak_leaves replace minecraft:spruce_leaves

tag @s remove gf
execute at @s if block ~ 45 ~ minecraft:emerald_block if score .amount .calc matches 3.. run tag @s add gf
execute at @s unless block ~ 45 ~ minecraft:emerald_block if block ~ 65 ~ minecraft:oak_leaves run tag @s add gf

# top mold

execute store result score .rand .calc run random value 0..20
execute at @s if score .rand .calc matches 0..2 positioned ~ 18 ~ if block ~ 18 ~ moss_carpet run setblock ~ 18 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 1..3 positioned ~1 18 ~ if block ~ 18 ~ moss_carpet run setblock ~ 18 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 2..4 positioned ~-1 18 ~ if block ~ 18 ~ moss_carpet run setblock ~ 18 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 3..5 positioned ~ 18 ~1 if block ~ 18 ~ moss_carpet run setblock ~ 18 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 4..6 positioned ~ 18 ~-1 if block ~ 18 ~ moss_carpet run setblock ~ 18 ~ minecraft:oak_leaves

execute store result score .rand .calc run random value 0..20
execute at @s if score .rand .calc matches 0..2 positioned ~ 18 ~ if block ~ 65 ~ oak_leaves run setblock ~ 18 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 1..3 positioned ~1 18 ~ if block ~ 65 ~ oak_leaves run setblock ~ 18 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 2..4 positioned ~-1 18 ~ if block ~ 65 ~ oak_leaves run setblock ~ 18 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 3..5 positioned ~ 18 ~1 if block ~ 65 ~ oak_leaves run setblock ~ 18 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 4..6 positioned ~ 18 ~-1 if block ~ 65 ~ oak_leaves run setblock ~ 18 ~ minecraft:moss_carpet

# leave spread
execute at @s if block ~ 65 ~ moss_carpet run setblock ~ 65 ~ minecraft:oak_leaves

execute store result score .rand .calc run random value 0..5
execute at @s if score .rand .calc matches 0..2 positioned ~1 ~ ~ if block ~ 65 ~ moss_carpet run setblock ~ 65 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 1..3 positioned ~-1 ~ ~ if block ~ 65 ~ moss_carpet run setblock ~ 65 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 2..4 positioned ~ ~ ~1 if block ~ 65 ~ moss_carpet run setblock ~ 65 ~ minecraft:oak_leaves
execute at @s if score .rand .calc matches 3..5 positioned ~ ~ ~-1 if block ~ 65 ~ moss_carpet run setblock ~ 65 ~ minecraft:oak_leaves

# moss spread
execute at @s if block ~ 65 ~ air if block ~ 45 ~ minecraft:emerald_block run setblock ~ 65 ~ minecraft:moss_carpet

scoreboard players set .rand .calc 100
execute if block ~ 45 ~ minecraft:emerald_block store result score .rand .calc run random value 0..5
execute if block ~ 65 ~ minecraft:oak_leaves store result score .rand .calc run random value 0..5
execute at @s if score .rand .calc matches 0..2 positioned ~1 ~ ~ if block ~ 65 ~ air run setblock ~ 65 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 1..3 positioned ~-1 ~ ~ if block ~ 65 ~ air run setblock ~ 65 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 2..4 positioned ~ ~ ~1 if block ~ 65 ~ air run setblock ~ 65 ~ minecraft:moss_carpet
execute at @s if score .rand .calc matches 3..5 positioned ~ ~ ~-1 if block ~ 65 ~ air run setblock ~ 65 ~ minecraft:moss_carpet

execute as @s[tag=gf] at @s run function game:enemy/mold/grow_forward

execute store result score .rand .calc run random value 0..100

scoreboard players set .min_count .calc 0
execute as @e[type=zombie] run scoreboard players add .min_count .calc 1

execute if score .amount .calc matches 5.. if score .min_count .calc matches ..20 if score .rand .calc matches 0..50 positioned ~ ~-0.9 ~ run function game:enemy/mold/summon_zombie