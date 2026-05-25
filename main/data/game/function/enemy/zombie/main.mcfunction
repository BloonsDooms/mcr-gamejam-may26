team leave @s[nbt={HurtTime:9s}]
effect clear @s[nbt={HurtTime:9s}] slowness

execute at @s as @s[team=safe] positioned ~ ~15 ~ if entity @e[type=villager,distance=..12] at @s if block ~ 52 ~ diamond_block run effect give @s slowness 1 10 true
execute at @s as @s[team=safe] positioned ~ ~15 ~ if entity @e[type=villager,distance=..12] at @s if block ~ 52 ~ diamond_block run tp @s ~ ~ ~ facing entity @n[type=villager]
execute at @s as @s[team=safe] positioned ~ ~15 ~ if entity @e[type=villager,distance=..12] at @s if block ~ 52 ~ diamond_block run tp @s ~ ~ ~ ~ -10
execute at @s as @s[team=safe] positioned ~ ~15 ~ if entity @e[type=villager,distance=..12] at @s if block ~ 52 ~ diamond_block run scoreboard players add @s t1 1

swing @s[scores={t1=62}]
execute at @s[scores={t1=62}] rotated ~ 0 run fill ^-1 ^ ^1 ^1 ^2 ^2 structure_void replace black_stained_glass
execute at @s[scores={t1=62}] rotated ~ 0 run fill ^-1 ^ ^1 ^1 ^2 ^2 black_stained_glass replace gray_stained_glass
execute at @s[scores={t1=62}] rotated ~ 0 run fill ^-1 ^ ^1 ^1 ^2 ^2 gray_stained_glass replace light_gray_stained_glass
execute at @s[scores={t1=62}] rotated ~ 0 run fill ^-1 ^ ^1 ^1 ^2 ^2 light_gray_stained_glass replace glass
scoreboard players set @s[scores={t1=62..}] t1 0

execute as @s[tag=spawn] at @s run tp @s ~ ~0.05 ~ facing entity @n[type=villager]
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ air run data merge entity @s {NoAI:0b}
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ air run tag @s remove spawn
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ moss_carpet run data merge entity @s {NoAI:0b}
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ moss_carpet run tag @s remove spawn