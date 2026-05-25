## primarially an animation controller, but also for player detect
# run as the marker entity for the airlock


# open/close logic


execute positioned ^ ^ ^1.5 if entity @p[distance=..4] run tag @s add open_outside
execute unless entity @s[tag=open_inside_first] positioned ^ ^ ^1.5 if entity @p[distance=..4] run tag @s add open_outside_first

execute positioned ^ ^ ^1.5 unless entity @p[distance=..4] run tag @s remove open_outside
execute unless entity @s[tag=open_inside_first] positioned ^ ^ ^1.5 unless entity @p[distance=..4] run tag @s remove open_outside_first





execute positioned ^ ^ ^-1.5 if entity @p[distance=..4] run tag @s add open_inside
execute unless entity @s[tag=open_outside_first] positioned ^ ^ ^-1.5 if entity @p[distance=..4] run tag @s add open_inside_first

execute positioned ^ ^ ^-1.5 unless entity @p[distance=..4] run tag @s remove open_inside
execute unless entity @s[tag=open_outside_first] positioned ^ ^ ^-1.5 unless entity @p[distance=..4] run tag @s remove open_inside_first




# open the outside door first, and close it EVEN IF they still have tag=open_outside, IF they have tag=open_inside. Do not open door until outer door is closed.

# open either door, no one inside the airlock.
execute if entity @s[tag=open_outside,tag=!open_inside] if score @s t2 matches ..36 run scoreboard players add @s t2 1
execute if entity @s[tag=!open_outside,tag=open_inside] if score @s t1 matches ..36 run scoreboard players add @s t1 1

# close door behind the player, if door is open.
execute if entity @s[tag=open_outside_first,tag=open_inside] if score @s t2 matches 0.. run scoreboard players remove @s t2 1
execute if entity @s[tag=open_inside_first,tag=open_outside] if score @s t1 matches 0.. run scoreboard players remove @s t1 1

# open next door, if previous door is closed.
execute if entity @s[tag=open_outside_first,tag=open_inside] if score @s t2 matches ..0 if score @s t1 matches ..36 run scoreboard players add @s t1 1
execute if entity @s[tag=open_inside_first,tag=open_outside] if score @s t1 matches ..0 if score @s t2 matches ..36 run scoreboard players add @s t2 1

# if no one is near, close both
execute if entity @s[tag=!open_inside,tag=!open_outside] if score @s t2 matches 0.. run scoreboard players remove @s t2 1
execute if entity @s[tag=!open_inside,tag=!open_outside] if score @s t1 matches 0.. run scoreboard players remove @s t1 1

#execute positioned ^ ^ ^2.5 if entity @s[tag=open_outside_first] if score @s t2 matches ..26 run scoreboard players add @s t2 1
#execute positioned ^ ^ ^2.5 unless entity @s[tag=open_outside_first] if score @s t2 matches 0.. run scoreboard players remove @s t2 1

#execute positioned ^ ^ ^-2.5 if entity @s[tag=open_inside] if score @s t1 matches ..26 run scoreboard players add @s t1 1
#execute positioned ^ ^ ^-2.5 unless entity @s[tag=open_inside] if score @s t1 matches 0.. run scoreboard players remove @s t1 1



# animation controller

# full closed
execute if score @s t1 matches 0 run tp @n[tag=airlock_inner_left] @s
execute if score @s t1 matches 0 run tp @n[tag=airlock_inner_right] @s

# sound events
execute if score @s[tag=!open_inside] t1 matches 6 run playsound minecraft:block.iron_trapdoor.close block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_inside] t1 matches 1 run playsound minecraft:entity.armadillo.eat block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_inside] t1 matches 1 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_inside] t1 matches 1 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.25 0
execute if score @s[tag=!open_inside] t1 matches 22 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.4 0

# hesitation in airlock opening/closing
execute if score @s t1 matches 4 run tp @n[tag=airlock_inner_left] ^0.05 ^ ^
execute if score @s t1 matches 4 run tp @n[tag=airlock_inner_right] ^-0.05 ^ ^

execute if score @s t1 matches 8 run tp @n[tag=airlock_inner_left] ^0.1 ^ ^
execute if score @s t1 matches 8 run tp @n[tag=airlock_inner_right] ^-0.1 ^ ^


execute if score @s t1 matches 12 run tp @n[tag=airlock_inner_left] ^0.3 ^ ^
execute if score @s t1 matches 12 run tp @n[tag=airlock_inner_right] ^-0.3 ^ ^

#place/remove blocks
execute if score @s[tag=open_inside] t1 matches 24 run fill ^ ^ ^-2 ^ ^4 ^-2 air replace yellow_stained_glass_pane strict
execute if score @s[tag=!open_inside] t1 matches 24 run fill ^ ^ ^-2 ^ ^4 ^-2 yellow_stained_glass_pane replace air


execute if score @s t1 matches 14 run tp @n[tag=airlock_inner_left] ^0.6 ^ ^
execute if score @s t1 matches 14 run tp @n[tag=airlock_inner_right] ^-0.6 ^ ^




execute if score @s t1 matches 18 run tp @n[tag=airlock_inner_left] ^0.9 ^ ^
execute if score @s t1 matches 18 run tp @n[tag=airlock_inner_right] ^-0.9 ^ ^

execute if score @s t1 matches 22 run tp @n[tag=airlock_inner_left] ^1.3 ^ ^
execute if score @s t1 matches 22 run tp @n[tag=airlock_inner_right] ^-1.3 ^ ^

#place/remove blocks
execute if score @s[tag=open_inside] t1 matches 30 run fill ^-1 ^ ^-2 ^1 ^4 ^-2 air replace yellow_stained_glass_pane
execute if score @s[tag=!open_inside] t1 matches 30 run fill ^-1 ^ ^-2 ^1 ^4 ^-2 yellow_stained_glass_pane replace air
execute if score @s[tag=!open_inside] t1 matches 30 run fill ^ ^ ^-2 ^ ^4 ^-2 air replace yellow_stained_glass_pane strict



# animation controller

# full closed
execute if score @s t2 matches 0 run tp @n[tag=airlock_outer_left] @s
execute if score @s t2 matches 0 run tp @n[tag=airlock_outer_right] @s

# sound events
execute if score @s[tag=!open_outside] t2 matches 6 run playsound minecraft:block.iron_trapdoor.close block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_outside] t2 matches 1 run playsound minecraft:entity.armadillo.eat block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_outside] t2 matches 1 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1 0.1 0
execute if score @s[tag=open_outside] t2 matches 1 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.25 0
execute if score @s[tag=!open_outside] t2 matches 22 run playsound minecraft:entity.breeze.inhale block @a ~ ~ ~ 1 0.4 0

# hesitation in airlock opening/closing
execute if score @s t2 matches 4 run tp @n[tag=airlock_outer_left] ^0.05 ^ ^
execute if score @s t2 matches 4 run tp @n[tag=airlock_outer_right] ^-0.05 ^ ^

execute if score @s t2 matches 8 run tp @n[tag=airlock_outer_left] ^0.1 ^ ^
execute if score @s t2 matches 8 run tp @n[tag=airlock_outer_right] ^-0.1 ^ ^


execute if score @s t2 matches 12 run tp @n[tag=airlock_outer_left] ^0.3 ^ ^
execute if score @s t2 matches 12 run tp @n[tag=airlock_outer_right] ^-0.3 ^ ^

#place/remove blocks
execute if score @s[tag=open_outside] t2 matches 24 run fill ^ ^ ^3 ^ ^4 ^3 air replace yellow_stained_glass_pane strict
execute if score @s[tag=!open_outside] t2 matches 24 run fill ^ ^ ^3 ^ ^4 ^3 yellow_stained_glass_pane replace air


execute if score @s t2 matches 14 run tp @n[tag=airlock_outer_left] ^0.6 ^ ^
execute if score @s t2 matches 14 run tp @n[tag=airlock_outer_right] ^-0.6 ^ ^




execute if score @s t2 matches 18 run tp @n[tag=airlock_outer_left] ^0.9 ^ ^
execute if score @s t2 matches 18 run tp @n[tag=airlock_outer_right] ^-0.9 ^ ^

execute if score @s t2 matches 22 run tp @n[tag=airlock_outer_left] ^1.3 ^ ^
execute if score @s t2 matches 22 run tp @n[tag=airlock_outer_right] ^-1.3 ^ ^

#place/remove blocks
execute if score @s[tag=open_outside] t2 matches 30 run fill ^-1 ^ ^3 ^1 ^4 ^3 air replace yellow_stained_glass_pane
execute if score @s[tag=!open_outside] t2 matches 30 run fill ^-1 ^ ^3 ^1 ^4 ^3 yellow_stained_glass_pane replace air
execute if score @s[tag=!open_outside] t2 matches 30 run fill ^ ^ ^3 ^ ^4 ^3 air replace yellow_stained_glass_pane strict