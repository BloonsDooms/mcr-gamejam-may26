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

scoreboard players add .y2 .calc 10

summon armor_stand ~ ~1 ~ {Tags:["bomb","new"],Small:1,Invulnerable:1,Passengers:[{id:"minecraft:block_display",Tags:["tnt_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-1f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:tnt"}}],Invisible:1}
execute store result entity @n[type=armor_stand,tag=new] Motion[0] double .015 run scoreboard players get .x2 .calc
execute store result entity @n[type=armor_stand,tag=new] Motion[1] double .015 run scoreboard players get .y2 .calc
execute store result entity @n[type=armor_stand,tag=new] Motion[2] double .015 run scoreboard players get .z2 .calc

execute as @n[type=armor_stand,tag=new] run attribute @s minecraft:gravity base set 0.06

tag @e[type=armor_stand] remove new
kill @n[tag=look_temp]

scoreboard players set @s action_cooldown 30
scoreboard players set @s action_cooldown_max 30

execute if items entity @s weapon.mainhand *[damage=18] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_data={bomb:1b},item_name={"italic":false,"text":"Bomber"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=25] 1
execute if items entity @s weapon.mainhand *[damage=12] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_data={bomb:1b},item_name={"italic":false,"text":"Bomber"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=18,max_damage=24] 1
execute if items entity @s weapon.mainhand *[damage=6] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_data={bomb:1b},item_name={"italic":false,"text":"Bomber"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=12,max_damage=24] 1
execute if items entity @s weapon.mainhand *[damage=0] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_data={bomb:1b},item_name={"italic":false,"text":"Bomber"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=6,max_damage=24] 1

