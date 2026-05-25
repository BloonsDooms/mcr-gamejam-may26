tag @s add this
data modify block 0 -64 0 front_text.messages[0] set value ["Fuel: ",{score:{name:"@n[type=item_display,tag=this]",objective:"fuel"}},"/",{score:{name:"@n[type=item_display,tag=this]",objective:"fuel_max"}}]
data modify entity @s CustomName set from block 0 -64 0 front_text.messages[0]
tag @s remove this