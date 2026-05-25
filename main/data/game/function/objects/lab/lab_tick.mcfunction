execute at @e[distance=..9,tag=charge_station,type=interaction] run function game:objects/charge_station/tick


# refinery
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.0 oak_wood run scoreboard players add @s t1 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.0 green_dye run scoreboard players add @s t2 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.1 oak_wood run scoreboard players add @s t1 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.1 green_dye run scoreboard players add @s t2 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.2 oak_wood run scoreboard players add @s t1 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.2 green_dye run scoreboard players add @s t2 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.3 oak_wood run scoreboard players add @s t1 1
execute at @n[tag=refinery_input] if items block ~ ~ ~ container.3 green_dye run scoreboard players add @s t2 1



#execute at @n[tag=refinery_input] if score @s t1 matches 20.. run data modify storage main macro.slot set from entity @s Items[{id:"minecraft:oak_wood"}].Slot
#execute at @n[tag=refinery_input] if score @s t1 matches 20.. run function game:objects/lab/remove_item_macro with storage main macro
#execute at @n[tag=refinery_input] if score @s t2 matches 20.. run data modify storage main macro.slot set from entity @s Items[{id:"minecraft:green_dye"}].Slot
#execute at @n[tag=refinery_input] if score @s t2 matches 20.. run function game:objects/lab/remove_item_macro with storage main macro

execute at @n[tag=refinery_input] if score @s t1 matches 20.. run item modify block ~ ~ ~ container.0 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t2 matches 20.. run item modify block ~ ~ ~ container.0 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t1 matches 20.. run item modify block ~ ~ ~ container.1 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t2 matches 20.. run item modify block ~ ~ ~ container.1 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t1 matches 20.. run item modify block ~ ~ ~ container.2 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t2 matches 20.. run item modify block ~ ~ ~ container.2 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t1 matches 20.. run item modify block ~ ~ ~ container.3 game:remove_one_item
execute at @n[tag=refinery_input] if score @s t2 matches 20.. run item modify block ~ ~ ~ container.3 game:remove_one_item

execute at @n[tag=refinery_output] if score @s t2 matches 20.. run loot insert ~ ~ ~ loot minecraft:blocks/add_biofuel
execute at @n[tag=refinery_output] if score @s t1 matches 20.. run loot insert ~ ~ ~ loot minecraft:blocks/add_material

execute at @n[tag=refinery_output] if score @s t1 matches 20.. run scoreboard players set @s t1 0
execute at @n[tag=refinery_output] if score @s t2 matches 20.. run scoreboard players set @s t2 0
