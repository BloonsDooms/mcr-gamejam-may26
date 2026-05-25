scoreboard players add .game_time .calc 1

execute if score .game_time .calc matches 8 run fill 336 65 210 206 67 343 air replace minecraft:moss_carpet
execute if score .game_time .calc matches 8 run fill 336 65 210 206 67 343 air replace minecraft:oak_leaves
execute if score .game_time .calc matches 8 run kill @e[type=zombie]
execute if score .game_time .calc matches 8 run kill @e[type=item]
execute if score .game_time .calc matches 8 run function game:enemy/tree/clear

execute if score .game_time .calc matches 10 positioned 327.73 65.00 324.64 run function game:enemy/tree/spawn
execute if score .game_time .calc matches 45 positioned 335.54 65.00 266.60 run function game:enemy/tree/spawn
execute if score .game_time .calc matches 82 positioned 320.72 65.00 228.37 run function game:enemy/tree/spawn
execute if score .game_time .calc matches 122 positioned 227.41 65.00 325.34 run function game:enemy/tree/spawn
execute if score .game_time .calc matches 189 positioned 221.46 65.00 226.52 run function game:enemy/tree/spawn

execute if score .game_time .calc matches 400 run tag @e[tag=tree] add grow1

execute if score .game_time .calc matches 800 run tag @e[tag=tree] add thorns

execute if score .game_time .calc matches 1200 run tag @e[tag=tree] add grow2
execute if score .game_time .calc matches 3600 run tag @e[tag=tree] add grow3