summon marker ~ ~ ~ {Tags:["look_temp"]}
tp @n[tag=look_temp] @s

execute as @n[tag=look_temp] store result score .x .calc run data get entity @s Pos[0] 100
execute as @n[tag=look_temp] store result score .y .calc run data get entity @s Pos[1] 100
execute as @n[tag=look_temp] store result score .z .calc run data get entity @s Pos[2] 100

execute as @n[tag=look_temp] at @s run tp @s ^ ^ ^1

execute as @n[tag=look_temp] store result score .x2 .calc run data get entity @s Pos[0] 100
execute as @n[tag=look_temp] store result score .y2 .calc run data get entity @s Pos[1] 100
execute as @n[tag=look_temp] store result score .z2 .calc run data get entity @s Pos[2] 100

scoreboard players operation .x2 .calc -= .x .calc
scoreboard players operation .y2 .calc -= .y .calc
scoreboard players operation .z2 .calc -= .z .calc

scoreboard players set .y2 .calc 30

tag @e remove slice_hit
tag @e remove slice_hit1
tag @e remove slice_hit2

tag @e[type=villager,distance=..3] add slice_hit1
execute positioned ^ ^ ^20 run tag @e[type=villager,distance=..20] add slice_hit2

tag @e[tag=slice_hit1,tag=slice_hit2] add slice_hit

execute as @e[tag=slice_hit] run damage @s 5

execute as @e[tag=slice_hit] store result entity @s Motion[0] double .01 run scoreboard players get .x2 .calc
execute as @e[tag=slice_hit] store result entity @s Motion[1] double .02 run scoreboard players get .y2 .calc
execute as @e[tag=slice_hit] store result entity @s Motion[2] double .01 run scoreboard players get .z2 .calc

kill @n[tag=look_temp]

execute as @s at @s rotated ~ 0 positioned ^ ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.8 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.8 ^ ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.8 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.8 ^ ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^ ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^ ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^ ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^ ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^ ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^ ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^ ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^ ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^ ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^ ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^ ^3 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy

execute as @s at @s rotated ~ 0 positioned ^ ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.8 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.8 ^1 ^0.6 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.8 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.8 ^1 ^1.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^1 ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^1 ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^1 ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^1 ^1.8 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^0.6 ^1 ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-0.6 ^1 ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^1.2 ^1 ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^-1.2 ^1 ^2.4 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s at @s rotated ~ 0 positioned ^ ^1 ^3 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy