# give the new player an increased ID
execute store result score @s player.id run scoreboard players add #id player.id 1

scoreboard players set @s equip_item 0
scoreboard players set @s equip_time 0
scoreboard players set @s equip_time_max 1
scoreboard players set @s action_timer 0
scoreboard players set @s action_cooldown 0