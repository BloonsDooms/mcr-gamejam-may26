execute as @s[tag=!spawn] at @s run function game:objects/saw/spawn

scoreboard players add @s t1 1

execute as @s[scores={t1=40..}] at @s as @n[tag=root] at @s run function game:enemy/tree/root/break
kill @s[scores={t1=40..}]