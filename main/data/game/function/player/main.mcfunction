execute store result score @s hotbar run data get entity @s SelectedItemSlot
execute unless score @s hotbar = @s hotbar_t run tag @s add switch
scoreboard players operation @s hotbar_t = @s hotbar

scoreboard players set @s[tag=switch] action_timer 0
scoreboard players set @s[tag=switch] action_cooldown 2
scoreboard players set @s[tag=switch] equip_time 0

# detect held item
# 1-laser
scoreboard players set @s equip_item 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={laser:1b}] run scoreboard players set @s equip_item 1

execute as @s[scores={click=1..,action_timer=..0}] run scoreboard players set @s action_timer 20

execute as @s[scores={equip_item=1,action_timer=1..}] run function game:player/laser/start

scoreboard players set @s click 0

scoreboard players remove @s[scores={action_cooldown=1..}] action_cooldown 1
scoreboard players remove @s[scores={action_timer=1..}] action_timer 1
tag @s remove switch