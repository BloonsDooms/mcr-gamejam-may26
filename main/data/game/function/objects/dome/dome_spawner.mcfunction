scoreboard players add @s t1 1

data modify entity @s text set value [{text:"Progress: ",color:"green"},{score:{name:"@n[type=text_display,tag=dome_spawner]",objective:"t1"}},{text:"%"}]

execute if score @s t1 matches 100.. run fill ~-1 ~-3 ~-1 ~1 ~-1 ~1 air
execute if score @s t1 matches 100.. run function game:objects/dome/spawn_new_dome
execute if score @s t1 matches 100.. run playsound entity.generic.explode block @a ~ ~ ~ 1 1 0 
execute if score @s t1 matches 100.. run kill @s
execute if score @s t1 matches 100.. run kill @s
