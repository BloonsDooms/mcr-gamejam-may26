execute as @s[tag=!spawn] at @s run function game:objects/saw/spawn

scoreboard players add @s t1 1

execute as @s[scores={t1=40..}] at @s positioned ~ ~-1 ~ as @n[tag=root,distance=..0.1] at @s run function game:enemy/tree/root/break
execute as @s[scores={t1=40..}] at @s run kill @n[tag=saw_dis]
kill @s[scores={t1=40..}]