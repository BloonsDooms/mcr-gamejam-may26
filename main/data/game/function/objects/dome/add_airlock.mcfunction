tag @n[tag=dome] add this
execute at @n[tag=dome] rotated as @s run summon marker ~ ~ ~ {Tags:["temp"]}
execute store result score .player_rotation .calc run data get entity @s Rotation[0] 1
scoreboard players add .player_rotation .calc 45
execute store result entity @n[tag=temp] Rotation[0] float 90 run scoreboard players operation .player_rotation .calc /= #90 .const



execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-2 ^ ^5 ^2 ^5 ^10 smooth_basalt
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-2 ^1 ^6 ^2 ^4 ^9 tuff_bricks
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-2 ^2 ^6 ^2 ^3 ^9 black_stained_glass_pane
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-1 ^ ^6 ^1 ^ ^9 chiseled_tuff_bricks
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-1 ^5 ^6 ^1 ^5 ^9 black_stained_glass
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] run fill ^-1 ^1 ^5 ^1 ^4 ^11 air
execute as @e[tag=this,tag=level0] at @s rotated as @n[tag=temp] positioned ^ ^0.5 ^7.4 run function game:objects/doors/new_airlock



execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-2 ^ ^6 ^2 ^5 ^11 smooth_basalt
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-2 ^1 ^7 ^2 ^4 ^10 tuff_bricks
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-2 ^2 ^7 ^2 ^3 ^10 black_stained_glass_pane
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-1 ^ ^7 ^1 ^ ^10 chiseled_tuff_bricks
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-1 ^5 ^7 ^1 ^5 ^10 black_stained_glass
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] run fill ^-1 ^1 ^6 ^1 ^4 ^12 air
execute as @e[tag=this,tag=level1] at @s rotated as @n[tag=temp] positioned ^ ^0.5 ^8.4 run function game:objects/doors/new_airlock




execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-2 ^ ^8 ^2 ^5 ^13 smooth_basalt
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-2 ^1 ^9 ^2 ^4 ^12 tuff_bricks
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-2 ^2 ^9 ^2 ^3 ^12 black_stained_glass_pane
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-1 ^ ^9 ^1 ^ ^12 chiseled_tuff_bricks
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-1 ^5 ^9 ^1 ^5 ^12 black_stained_glass
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] run fill ^-1 ^1 ^8 ^1 ^4 ^14 air
execute as @e[tag=this,tag=level2] at @s rotated as @n[tag=temp] positioned ^ ^0.5 ^10.4 run function game:objects/doors/new_airlock



execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-2 ^ ^10 ^2 ^5 ^15 smooth_basalt
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-2 ^1 ^11 ^2 ^4 ^14 tuff_bricks
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-2 ^2 ^11 ^2 ^3 ^14 black_stained_glass_pane
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-1 ^ ^11 ^1 ^ ^14 chiseled_tuff_bricks
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-1 ^5 ^11 ^1 ^5 ^14 black_stained_glass
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] run fill ^-1 ^1 ^10 ^1 ^4 ^16 air
execute as @e[tag=this,tag=level3] at @s rotated as @n[tag=temp] positioned ^ ^0.5 ^12.4 run function game:objects/doors/new_airlock







kill @n[tag=temp]
tag @e remove this