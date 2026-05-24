scoreboard players set @s action_cooldown 20
scoreboard players set @s action_cooldown_max 20

# get type of nearest upgradeable
execute as @n[type=marker,tag=upgradeable] if entity @s[tag=dome] run scoreboard players set .type .calc 1
execute as @n[type=marker,tag=upgradeable] if entity @s[tag=door_hookpoint] run scoreboard players set .type .calc 2

# do upgrade
execute if score .type .calc matches 1 if function game:player/upgrader/check_dome run return run function game:objects/dome/upgrade_dome
execute if score .type .calc matches 2 if function game:player/upgrader/check_door as @n[tag=door_hookpoint] at @s run function game:objects/doors/new_door
tellraw @s "Upgrade failed!"
return fail