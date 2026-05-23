scoreboard players set .step .calc 100
execute positioned ~ ~1.6 ~ positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["temp_look"]}
execute positioned ~ ~1.5 ~ positioned ^-0.2 ^ ^ facing entity @n[tag=temp_look] eyes run function game:player/laser/step

kill @e[tag=temp_look]