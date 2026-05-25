# give the new player an increased ID
execute store result score @s player.id run scoreboard players add #id player.id 1

scoreboard players set @s equip_item 0
scoreboard players set @s equip_time 999
scoreboard players set @s equip_time_max 1
scoreboard players set @s action_timer 0
scoreboard players set @s action_cooldown 0

scoreboard players set @s damage_cool 0

scoreboard players set @s oxygen 100
scoreboard players set @s oxygenT 100

tp @s -31.09 69.00 250.06 -135 0