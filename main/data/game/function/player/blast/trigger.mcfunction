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

summon arrow ~ ~1.6 ~ {Tags:["new"],damage:3d,PierceLevel:1b,SoundEvent:"block.trial_spawner.hit"}
execute store result entity @n[type=arrow,tag=new] Motion[0] double .015 run scoreboard players get .x2 .calc
execute store result entity @n[type=arrow,tag=new] Motion[1] double .015 run scoreboard players get .y2 .calc
execute store result entity @n[type=arrow,tag=new] Motion[2] double .015 run scoreboard players get .z2 .calc

execute as @n[type=arrow,tag=new] run attribute @s minecraft:gravity base set 0.04

tag @e[type=arrow] remove new
kill @n[tag=look_temp]

execute if items entity @s weapon.mainhand *[damage=0] run scoreboard players set @s damage_temp 0
execute if items entity @s weapon.mainhand *[damage=10] run scoreboard players set @s damage_temp 1
execute if items entity @s weapon.mainhand *[damage=20] run scoreboard players set @s damage_temp 2
execute if items entity @s weapon.mainhand *[damage=30] run scoreboard players set @s damage_temp 3
execute if items entity @s weapon.mainhand *[damage=40] run scoreboard players set @s damage_temp 4
execute if items entity @s weapon.mainhand *[damage=50] run scoreboard players set @s damage_temp 5
execute if items entity @s weapon.mainhand *[damage=60] run scoreboard players set @s damage_temp 6
execute if items entity @s weapon.mainhand *[damage=70] run scoreboard players set @s damage_temp 7
execute if items entity @s weapon.mainhand *[damage=80] run scoreboard players set @s damage_temp 8
execute if items entity @s weapon.mainhand *[damage=90] run scoreboard players set @s damage_temp 9
execute if items entity @s weapon.mainhand *[damage=100] run scoreboard players set @s damage_temp 10
execute if items entity @s weapon.mainhand *[damage=110] run scoreboard players set @s damage_temp 11
execute if items entity @s weapon.mainhand *[damage=120] run scoreboard players set @s damage_temp 12

item replace entity @s inventory.8 with minecraft:stone

playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 1.5