scoreboard players set @s action_cooldown 20
scoreboard players set @s action_cooldown_max 20

execute as @n[type=marker,tag=upgradeable] at @s if entity @s[tag=dome] if function game:player/upgrader/check_dome run return run function game:objects/dome/upgrade_dome
execute as @n[type=marker,tag=upgradeable] at @s if entity @s[tag=door_hookpoint] if function game:player/upgrader/check_door run return run function game:objects/doors/new_door

tellraw @s "Upgrade failed!"
return fail