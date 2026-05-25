summon marker ~ ~ ~ {Tags:["mold_spread"]}

spreadplayers 274 274 0 65 under 1000 false @e[tag=mold_spread]

execute as @e[tag=mold_spread] at @s run function game:enemy/mold/spread_check

kill @e[tag=mold_spread]

scoreboard players set .spread .calc 0