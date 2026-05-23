## SCOREBOARD FILE
# all scoreboards are initialized here, please for the love of all that is holy do NOT do it anywhere else.

## SETTINGS

# dummy, might make this a data storage and load it as a config file.





## ID

# player ID, assigned to players and linked objects.
scoreboard objectives add player.id dummy
scoreboard players reset * player.id

# object ID, assigned to objects and other linked objects.
scoreboard objectives add object.id dummy
scoreboard players reset * object.id

# relog detection. This is also reset, because on /reload everyone gets IDs reassigned anyway.
scoreboard objectives add player.rejoin minecraft.custom:leave_game
scoreboard players reset * player.rejoin