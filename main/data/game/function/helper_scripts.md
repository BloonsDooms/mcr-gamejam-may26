# tag any entities with the same ID as the player. Useful for linked objects.
scoreboard players operation #temp player.id = @s player.id
tag @e[predicate=game:id/matching_player_id] add this