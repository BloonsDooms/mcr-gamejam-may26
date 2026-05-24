#
tag @s add me

# tag your roots
execute as @e[tag=root] if score @s parent.id = @n[tag=me] parent.id if score @s t2 > @n[tag=me] t2 at @s run function game:enemy/tree/root/break2

execute as @e[tag=tree] if score @s object.id = @n[tag=me] parent.id run tag @s remove stop
execute as @e[tag=tree] if score @s object.id = @n[tag=me] parent.id run scoreboard players operation @s t2 = @n[tag=me] t2
execute as @e[tag=tree] if score @s object.id = @n[tag=me] parent.id run scoreboard players remove @s[scores={t2=1..}] t2 1

function game:enemy/tree/root/break2

playsound minecraft:item.wolf_armor.damage master @a ~ ~ ~ 0.8 0.7

#
tag @s remove me