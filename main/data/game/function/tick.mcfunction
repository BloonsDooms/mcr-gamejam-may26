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



# get entities matching player.id
#scoreboard players operation #temp player.id = @s player.id
#tag @e[predicate=game:id/matching_player_id] add this


