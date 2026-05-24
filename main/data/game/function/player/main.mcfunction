execute store result score @s hotbar run data get entity @s SelectedItemSlot
execute unless score @s hotbar = @s hotbar_t run tag @s add switch
scoreboard players operation @s hotbar_t = @s hotbar

scoreboard players set @s[tag=switch,scores={equip_item=1,action_timer=1..}] action_cooldown 40
scoreboard players set @s[tag=switch,scores={equip_item=1,action_timer=1..}] action_cooldown_max 40

scoreboard players set @s[tag=switch] action_timer 0
scoreboard players set @s[tag=switch] equip_time 999

# detect held item
# 1-laser 2-blaster 3-slicer 4-bomber 5-hose 6-upgrader
scoreboard players set @s equip_item 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={laser:1b}] run scoreboard players set @s equip_item 1
execute if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players set @s equip_item 2
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={slicer:1b}] run scoreboard players set @s equip_item 3
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={bomb:1b}] run scoreboard players set @s equip_item 4
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={hose:1b}] run scoreboard players set @s equip_item 5
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={upgrader:1b}] run scoreboard players set @s equip_item 6

scoreboard players set @s[tag=switch,scores={equip_item=0}] equip_time 0
title @s[tag=switch,scores={equip_item=0}] actionbar [{"text":""}]

playsound minecraft:ui.toast.out master @s[tag=switch,scores={equip_item=1..}] ~ ~ ~ 1 2
scoreboard players set @s[tag=switch,scores={equip_item=1}] equip_time 15
scoreboard players set @s[tag=switch,scores={equip_item=1}] equip_time_max 15

scoreboard players set @s[tag=switch,scores={equip_item=2}] equip_time 5
scoreboard players set @s[tag=switch,scores={equip_item=2}] equip_time_max 5

scoreboard players set @s[tag=switch,scores={equip_item=4}] equip_time 20
scoreboard players set @s[tag=switch,scores={equip_item=4}] equip_time_max 20

scoreboard players set @s[tag=switch,scores={equip_item=6}] equip_time 0
scoreboard players set @s[tag=switch,scores={equip_item=6}] equip_time_max 0

#blaster
execute unless items entity @s weapon.mainhand *[damage=120] run item replace entity @s[scores={equip_item=2,equip_time=..0}] inventory.8 with minecraft:arrow
execute unless entity @s[scores={equip_item=2,equip_time=..0}] run item replace entity @s inventory.8 with minecraft:stone
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=..0}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=10]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=1}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=20]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=2}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=30]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=3}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=40]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=4}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=50]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=5}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=60]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=6}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=70]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=7}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=80]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=8}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=90]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=9}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=100]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=10}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=110]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=11..}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=120]
execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] run function game:player/blast/trigger
execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] run item replace entity @s weapon.mainhand with minecraft:iron_ingot

#
execute as @s[scores={equip_time=1..}] run function game:player/ui/equip_time

# start laser
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=1}] unless items entity @s weapon.mainhand *[damage=25] run scoreboard players set @s action_timer_max 22
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=1}] unless items entity @s weapon.mainhand *[damage=25] run scoreboard players set @s action_timer 22

execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=4}] unless items entity @s weapon.mainhand *[damage=25] run function game:player/bomb/trigger

# upgrader
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=6}] run function game:player/upgrader/trigger

execute as @s[scores={action_timer=1..}] run function game:player/ui/action_time

execute as @s[scores={equip_item=1,action_timer=1..}] run function game:player/laser/start

scoreboard players set @s click 0

execute as @s[scores={action_cooldown=0..}] run function game:player/ui/action_cooldown

scoreboard players remove @s[scores={action_cooldown=-10..}] action_cooldown 1
title @s[scores={action_cooldown=-6,action_timer=..0,equip_time=..0}] actionbar [{"text":""}]

scoreboard players remove @s[scores={action_timer=1..}] action_timer 1

playsound minecraft:ui.toast.in master @s[scores={equip_time=1,action_cooldown=..0}] ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup master @s[scores={equip_time=1,action_cooldown=..0}] ~ ~ ~ 1 2
title @s[scores={equip_time=1,action_cooldown=..0}] actionbar [{"text":"Equiping : "},{"text":"□□□□□□□□□□","color":"green"}]
scoreboard players remove @s[scores={equip_time=1..}] equip_time 1
tag @s remove switch

#thorns
execute if block ~ ~ ~1 pale_oak_button[facing=north,face=wall] run tag @s add spike
execute if block ~ ~1 ~1 pale_oak_button[facing=north,face=wall] run tag @s add spike
execute if block ~ ~ ~-1 pale_oak_button[facing=south,face=wall] run tag @s add spike
execute if block ~ ~1 ~-1 pale_oak_button[facing=south,face=wall] run tag @s add spike
execute if block ~1 ~ ~ pale_oak_button[facing=west,face=wall] run tag @s add spike
execute if block ~1 ~1 ~ pale_oak_button[facing=west,face=wall] run tag @s add spike
execute if block ~-1 ~ ~ pale_oak_button[facing=east,face=wall] run tag @s add spike
execute if block ~-1 ~1 ~ pale_oak_button[facing=east,face=wall] run tag @s add spike
execute if block ~ ~-1 ~ pale_oak_button[face=floor] run tag @s add spike
execute if block ~ ~ ~ pale_oak_button run tag @s add spike
execute if block ~ ~1 ~ pale_oak_button run tag @s add spike

damage @s[tag=spike,scores={damage_cool=..0}] 3
scoreboard players remove @s[scores={damage_cool=1..}] damage_cool 1
scoreboard players set @s[tag=spike,scores={damage_cool=1..}] damage_cool 8
tag @s remove spike