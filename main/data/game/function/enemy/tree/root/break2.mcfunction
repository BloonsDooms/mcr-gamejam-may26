execute at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace oak_button
execute at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace pale_oak_button
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace oak_button
fill ~ ~ ~ ~ ~ ~ air replace oak_wood
summon item ~ ~ ~ {Item:{id:"minecraft:oak_wood",count:1}}
playsound minecraft:block.wood.break master @a ~ ~ ~ 0.8 0.7

kill @s