scoreboard players set .step .calc 100
execute positioned ~ ~1.6 ~ positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["temp_look"]}
execute positioned ~ ~1.5 ~ positioned ^-0.2 ^ ^ facing entity @n[tag=temp_look] eyes run function game:player/laser/step

#damage only two mobs by default mobs
execute as @e[tag=laser_damage,limit=2,sort=nearest] run damage @s 3
tag @e remove laser_damage

execute if score @s action_timer matches 1 run scoreboard players set @s action_cooldown_max 40
execute if score @s action_timer matches 1 run scoreboard players set @s action_cooldown 40

kill @e[tag=temp_look]

execute if score @s action_timer matches 22 run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 2
execute if score @s action_timer matches 22 run playsound minecraft:ui.toast.out master @a ~ ~ ~ 1 0

execute if score @s action_timer matches 20 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 18 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 16 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 14 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 12 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 10 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 8 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 4 run playsound minecraft:ui.hud.bubble_pop master @a ~ ~ ~ 0.6 2
execute if score @s action_timer matches 3 run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 0.5 2

#
execute if score @s action_timer matches 22 if items entity @s weapon.mainhand *[damage=20] run item replace entity @s weapon.mainhand with carrot_on_a_stick[item_model="carrot",custom_data={laser:1b},item_name={"italic":false,"text":"Laser"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=25] 1
execute if score @s action_timer matches 22 if items entity @s weapon.mainhand *[damage=15] run item replace entity @s weapon.mainhand with carrot_on_a_stick[item_model="carrot",custom_data={laser:1b},item_name={"italic":false,"text":"Laser"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=20] 1
execute if score @s action_timer matches 22 if items entity @s weapon.mainhand *[damage=10] run item replace entity @s weapon.mainhand with carrot_on_a_stick[item_model="carrot",custom_data={laser:1b},item_name={"italic":false,"text":"Laser"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=15] 1
execute if score @s action_timer matches 22 if items entity @s weapon.mainhand *[damage=5] run item replace entity @s weapon.mainhand with carrot_on_a_stick[item_model="carrot",custom_data={laser:1b},item_name={"italic":false,"text":"Laser"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=10] 1
execute if score @s action_timer matches 22 if items entity @s weapon.mainhand *[damage=0] run item replace entity @s weapon.mainhand with carrot_on_a_stick[item_model="carrot",custom_data={laser:1b},item_name={"italic":false,"text":"Laser"},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:100,operation:"add_value"}],damage=5] 1