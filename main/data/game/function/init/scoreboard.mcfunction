## SCOREBOARD FILE
# all scoreboards are initialized here, please for the love of all that is holy do NOT do it anywhere else.

## SETTINGS

# dummy, might make this a data storage and load it as a config file.



scoreboard objectives add .calc dummy
scoreboard objectives add .const dummy
scoreboard players reset * .const 
scoreboard players set #27 .const 27


## ID
# player ID, assigned to players and linked objects.
scoreboard objectives add player.id dummy
#scoreboard players reset * player.id

# object ID, assigned to objects and other linked objects.
scoreboard objectives add object.id dummy
#scoreboard players reset * object.id

scoreboard objectives add parent.id dummy
#scoreboard players reset * parent.id

# relog detection. This is also reset, because on /reload everyone gets IDs reassigned anyway.
# clearly, this doesn't work in singleplayer.
scoreboard objectives add player.rejoin minecraft.custom:leave_game
scoreboard players reset * player.rejoin

# 
scoreboard objectives add dome.x dummy
scoreboard players reset * dome.x
scoreboard objectives add dome.z dummy
scoreboard players reset * dome.z


#timers
scoreboard objectives add t1 dummy
scoreboard objectives add t2 dummy
scoreboard objectives add t3 dummy
scoreboard objectives add t4 dummy
scoreboard objectives add t5 dummy

scoreboard objectives add damage_cool dummy

scoreboard objectives add equip_time dummy
scoreboard objectives add equip_time_max dummy
scoreboard objectives add equip_item dummy
scoreboard objectives add action_timer dummy
scoreboard objectives add action_cooldown dummy

scoreboard objectives add hotbar dummy
scoreboard objectives add hotbar_t dummy

scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick