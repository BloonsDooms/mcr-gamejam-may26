#
particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove .step .calc 1

execute unless block ~ ~ ~ air if block ~ ~ ~ glow_lichen run summon marker ~ ~ ~ {Tags:["fire"]}
execute unless block ~ ~ ~ air run particle lava ^ ^ ^-0.2 0 0 0 0 1 force
execute unless block ~ ~ ~ air run scoreboard players set .step .calc 0

execute if score .step .calc matches 1.. positioned ^ ^ ^.1 run function game:player/laser/step