# new player detection
function game:player/join-leave/detect_players
execute as @a at @s run function game:player/main

#entity tickers
execute as @e[tag=bomb] at @s run function game:player/bomb/main
execute as @e[type=arrow] at @s run function game:player/blast/arrow
execute as @e[tag=fire_leave] at @s run function game:objects/fire/fire_leave
execute as @e[tag=fire] at @s run function game:objects/fire/main
execute as @e[tag=root] at @s run function game:enemy/tree/root/main
execute as @e[tag=tree] at @s run function game:enemy/tree/main
execute as @e[type=silverfish] at @s run function game:objects/saw/main
execute as @e[type=frog] at @s run function game:objects/dome/place_dome_spawner
execute as @e[type=text_display,tag=dome_spawner] at @s run function game:objects/dome/dome_spawner
execute as @e[type=marker,tag=door] at @s rotated as @s run function game:objects/doors/door_tick
execute as @e[type=marker,tag=airlock] at @s rotated as @s run function game:objects/doors/airlock_tick

execute if score .run_game .calc matches 1 run function game:enemy/mold/main

execute as @e[type=zombie] at @s run function game:enemy/zombie/main

execute as @e[tag=lab] run function game:objects/lab/lab_tick
execute as @e[tag=drill] run function game:objects/drill/drill

execute positioned -42 68 260 run scoreboard players set @a[distance=..40] oxygen 100

#execute positioned 276.61 65.00 275.18 unless entity @a[gamemode=adventure,distance=..100] if score .run_game .calc matches 1 run function game:end

# get entities matching player.id
#scoreboard players operation #temp player.id = @s player.id
#tag @e[predicate=game:id/matching_player_id] add this


