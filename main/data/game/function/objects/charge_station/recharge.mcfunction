scoreboard players set @s t1 0
scoreboard players remove @s fuel 1
function game:objects/charge_station/update_display
item modify entity @s contents game:recharge_item