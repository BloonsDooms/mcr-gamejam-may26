execute align xz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["tree","new","thorns"]}
execute store result score @n[tag=tree,tag=new] object.id run scoreboard players add #id object.id 1
scoreboard players set @n[tag=tree,tag=new] t2 0
team join green @n[tag=tree,tag=new]
tag @n[tag=tree,tag=new] remove new

#t1 = timer to grow
#t2 = # of roots
