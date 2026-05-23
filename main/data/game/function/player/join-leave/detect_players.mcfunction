execute as @a unless score @s player.id matches 0.. run function game:player/join-leave/new_player

# this doesn't work in singleplayer.
execute as @a if score @s player.rejoin matches 1.. run function game:player/join-leave/rejoin