tag @s add dome_hookpoints
tag @s add charge_station
tag @s add this
data modify entity @s width set value 2.1f
data modify entity @s height set value 3f
execute summon item_display run function game:objects/charge_station/init_display
tag @s remove this