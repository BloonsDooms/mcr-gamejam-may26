particle minecraft:wax_off ~ ~ ~ 0.2 0.2 0.2 0 1 force
particle minecraft:trial_omen ~ ~ ~ 0 0 0 0 1 force

execute as @s[nbt={inGround:1b}] at @s run particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0 3 force
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~-0.2 ~-0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~0.2 ~-0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~0.2 ~0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~-0.2 ~0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~-0.2 ~-0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~0.2 ~-0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~-0.2 ~0.2 if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~-0.2 ~-0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~0.2 ~0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~0.2 ~-0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~0.2 ~0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~-0.2 ~0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~0.2 ~-0.2 ~-0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~0.2 ~-0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
execute as @s[nbt={inGround:1b}] at @s positioned ~-0.2 ~-0.2 ~0.2 if block ~ ~ ~ #game:fire_break run setblock ~ ~ ~ air destroy
kill @s[nbt={inGround:1b}]