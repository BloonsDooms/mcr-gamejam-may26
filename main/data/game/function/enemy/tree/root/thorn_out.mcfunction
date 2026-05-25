fill ~ ~ ~-1 ~ ~ ~-1 minecraft:pale_oak_button[facing=north,powered=true] replace minecraft:oak_button[facing=north,powered=true]
fill ~ ~ ~1 ~ ~ ~1 minecraft:pale_oak_button[facing=south,powered=true] replace minecraft:oak_button[facing=south,powered=true]
fill ~1 ~ ~ ~1 ~ ~ minecraft:pale_oak_button[facing=east,powered=true] replace minecraft:oak_button[facing=east,powered=true]
fill ~-1 ~ ~ ~-1 ~ ~ minecraft:pale_oak_button[facing=west,powered=true] replace minecraft:oak_button[facing=west,powered=true]
fill ~ ~1 ~ ~ ~1 ~ minecraft:pale_oak_button[face=floor,powered=true] replace minecraft:oak_button[face=floor,powered=true]

execute at @s if entity @p[distance=..6] run playsound minecraft:item.spear.use master @a ~ ~ ~ 1 2