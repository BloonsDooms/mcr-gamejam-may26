scoreboard players add @s t1 1
scoreboard players add @s t2 1
execute as @s[scores={t2=1}] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 1 force

scoreboard players set @s[scores={t2=3..}] t2 0

execute as @s[scores={t1=35..}] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 air replace glow_lichen
kill @s[scores={t1=35..}]