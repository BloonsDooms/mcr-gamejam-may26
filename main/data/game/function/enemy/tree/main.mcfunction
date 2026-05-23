#t1 = timer to grow
#t2 = # of roots

scoreboard players add @s[scores={t2=..25}] t1 1

execute as @s[scores={t1=20..}] run function game:enemy/tree/grow