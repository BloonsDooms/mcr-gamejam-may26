scoreboard players add @s t1 1

execute if block ~ ~ ~ #minecraft:leaves run scoreboard players set @s[scores={t2=6..},tag=!enough] t1 0
execute if block ~ ~ ~ #minecraft:leaves as @s[scores={t2=6..},tag=!enough] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.6 1.2
execute if block ~ ~ ~ #minecraft:leaves run tag @s[scores={t2=6..}] add enough

execute if block ~ ~ ~ #game:hard_fire_start run scoreboard players set @s[scores={t2=30..},tag=!enough] t1 0
execute if block ~ ~ ~ #game:hard_fire_start as @s[scores={t2=30..},tag=!enough] at @s run particle poof ~ ~1.1 ~ 0.1 0.1 0.1 0.1 10 force
execute if block ~ ~ ~ #game:hard_fire_start as @s[scores={t2=30..},tag=!enough] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.6 1.2
execute if block ~ ~ ~ #game:hard_fire_start run tag @s[scores={t2=30..}] add enough

scoreboard players add @s[tag=enough] t3 1
execute as @s[scores={t3=1}] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.15 1 force
scoreboard players set @s[scores={t3=3..}] t3 0

execute as @s[scores={t1=42..},tag=enough] if block ~ ~ ~ #minecraft:leaves run fill ~ ~ ~ ~ ~ ~ air destroy
execute as @s[scores={t1=42..},tag=enough] if block ~ ~ ~ oak_wood at @s as @n[tag=root] run function game:enemy/tree/root/break
kill @s[scores={t1=42..},tag=enough]

kill @s[scores={t1=120..},tag=!enough]