tag @s add charge_station_display
ride @s mount @n[type=interaction,tag=this]
scoreboard players set @s fuel 0
scoreboard players set @s fuel_max 100
function game:objects/charge_station/update_display
data modify entity @s CustomNameVisible set value true