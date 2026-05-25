tellraw @a {"text":"Game Over"}

scoreboard players set .run_game .calc 0

fill 336 65 210 206 67 343 air replace minecraft:moss_carpet
fill 336 65 210 206 67 343 air replace minecraft:oak_leaves
kill @e[type=zombie]
kill @e[type=item]