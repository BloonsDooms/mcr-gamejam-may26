team leave @s[nbt={HurtTime:9s}]
effect clear @s[nbt={HurtTime:9s}] slowness

execute at @s as @s[team=safe] positioned ~ ~5 ~ if entity @e[type=villager,distance=..7] at @s if block ~ 52 ~ diamond_block run effect give @s slowness 1 10 true
execute at @s as @s[team=safe] positioned ~ ~5 ~ if entity @e[type=villager,distance=..7] at @s if block ~ 52 ~ diamond_block run tp @s ~ ~ ~ facing entity @n[type=villager]
execute at @s as @s[team=safe] positioned ~ ~5 ~ if entity @e[type=villager,distance=..7] at @s if block ~ 52 ~ diamond_block run tp @s ~ ~ ~ ~ -10
execute at @s as @s[team=safe] positioned ~ ~5 ~ if entity @e[type=villager,distance=..7] at @s if block ~ 52 ~ diamond_block run scoreboard players add @s t1 1

swing @s[scores={t1=16}]
scoreboard players set @s[scores={t1=16}] t1 0

execute as @s[tag=spawn] at @s run tp @s ~ ~0.05 ~ facing entity @n[type=villager]
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ air run data merge entity @s {NoAI:0b}
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ air run tag @s remove spawn
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ moss_carpet run data merge entity @s {NoAI:0b}
execute as @s[tag=spawn] at @s if block ~ ~-0.1 ~ moss_carpet run tag @s remove spawn