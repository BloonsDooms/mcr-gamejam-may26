# new player detection
function game:player/join-leave/detect_players

#entity tickers
execute as @e[tag=root] at @s run function game:enemy/tree/root/main
execute as @e[tag=tree] at @s run function game:enemy/tree/main
execute as @e[type=silverfish] at @s run function game:objects/saw/main


# get entities matching player.id
#scoreboard players operation #temp player.id = @s player.id
#tag @e[predicate=game:id/matching_player_id] add this


