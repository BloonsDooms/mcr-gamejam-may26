#t1 = timer to grow
#t2 = # of roots



# thorns
tag @e[tag=root] remove mine
tag @e remove end_root
tag @s add me

execute as @e[tag=root] if score @s parent.id = @n[tag=me] object.id run tag @s add mine
execute unless entity @s[tag=active_thorns] if entity @e[tag=root,tag=mine,tag=active_thorns] as @e[tag=root,tag=mine] at @s run function game:enemy/tree/root/thorn_out
execute unless entity @s[tag=active_thorns] if entity @e[tag=root,tag=mine,tag=active_thorns] run tag @s add active_thorns
execute if entity @s[tag=active_thorns] unless entity @e[tag=root,tag=mine,tag=active_thorns] as @e[tag=root,tag=mine] at @s run function game:enemy/tree/root/thorn_in
execute if entity @s[tag=active_thorns] unless entity @e[tag=root,tag=mine,tag=active_thorns] run tag @s remove active_thorns

tag @s remove me
tag @e[tag=root] remove mine
tag @e[tag=root] remove end_root

# grow
scoreboard players set @s[tag=stop] t1 1
scoreboard players add @s[scores={t2=..25}] t1 1
execute as @s[scores={t1=20..}] run function game:enemy/tree/grow