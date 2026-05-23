tag @e[tag=root] remove mine
tag @e remove end_root
tag @s add me

# tag your roots
execute as @e[tag=root] if score @s parent.id = @n[tag=me] object.id run tag @s add mine

# count roots
scoreboard players set @s t2 0
execute as @e[tag=root,tag=mine] run scoreboard players operation @n[tag=me] t2 > @s t2

execute as @e[tag=root,tag=mine] if score @s t2 = @n[tag=me] t2 run tag @s add end_root

#
execute unless entity @e[tag=end_root] run tag @s add end_root
execute as @n[tag=end_root] at @s run function game:enemy/tree/root/spawn

#reset grow timer
scoreboard players set @s t1 0

#
tag @s remove me
tag @e[tag=root] remove mine
tag @e[tag=root] remove end_root