## primarially an animation controller, but also for player detect
# run as the marker entity for the door


# open/close logic

execute if entity @p[distance=..3] run tag @s add opening
execute unless entity @p[distance=..3] run tag @s remove opening

execute if entity @s[tag=opening] if score @s t1 matches ..26 run scoreboard players add @s t1 1
execute unless entity @s[tag=opening] if score @s t1 matches 0.. run scoreboard players remove @s t1 1


# animation controller

# full closed
execute if score @s t1 matches 0 run tp @n[tag=door_left] @s
execute if score @s t1 matches 0 run tp @n[tag=door_right] @s

# sound events
execute if score @s[tag=!opening] t1 matches 6 run playsound minecraft:block.iron_trapdoor.close block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=opening] t1 matches 1 run playsound minecraft:entity.armadillo.eat block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=opening] t1 matches 1 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=opening] t1 matches 1 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.25 0
execute if score @s[tag=!opening] t1 matches 22 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.4 0

# hesitation in door opening/closing
execute if score @s t1 matches 4 run tp @n[tag=door_left] ^0.05 ^ ^
execute if score @s t1 matches 4 run tp @n[tag=door_right] ^-0.05 ^ ^

execute if score @s t1 matches 8 run tp @n[tag=door_left] ^0.1 ^ ^
execute if score @s t1 matches 8 run tp @n[tag=door_right] ^-0.1 ^ ^


execute if score @s t1 matches 12 run tp @n[tag=door_left] ^0.3 ^ ^
execute if score @s t1 matches 12 run tp @n[tag=door_right] ^-0.3 ^ ^

#place/remove blocks
execute if score @s[tag=opening] t1 matches 16 run fill ^ ^ ^ ^ ^4 ^ air replace yellow_stained_glass_pane strict
execute if score @s[tag=!opening] t1 matches 16 run fill ^ ^ ^ ^ ^4 ^ yellow_stained_glass_pane replace air


execute if score @s t1 matches 14 run tp @n[tag=door_left] ^0.6 ^ ^
execute if score @s t1 matches 14 run tp @n[tag=door_right] ^-0.6 ^ ^




execute if score @s t1 matches 18 run tp @n[tag=door_left] ^0.9 ^ ^
execute if score @s t1 matches 18 run tp @n[tag=door_right] ^-0.9 ^ ^

execute if score @s t1 matches 22 run tp @n[tag=door_left] ^1.3 ^ ^
execute if score @s t1 matches 22 run tp @n[tag=door_right] ^-1.3 ^ ^

#place/remove blocks
execute if score @s[tag=opening] t1 matches 24 run fill ^-1 ^ ^ ^1 ^4 ^ air replace yellow_stained_glass_pane
execute if score @s[tag=!opening] t1 matches 24 run fill ^-1 ^ ^ ^1 ^4 ^ yellow_stained_glass_pane replace air
execute if score @s[tag=!opening] t1 matches 24 run fill ^ ^ ^ ^ ^4 ^ air replace yellow_stained_glass_pane strict