scoreboard players set @s action_cooldown 20
scoreboard players set @s action_cooldown_max 20

# get type of nearest upgradeable
execute as @n[type=marker,tag=upgradeable] if entity @s[tag=dome] run scoreboard players set .type .calc 1

# do upgrade
execute if score .type .calc matches 1 if function game:player/upgrader/check_dome run return run function game:objects/dome/upgrade_dome
tellraw @s "Upgrade failed!"
return fail