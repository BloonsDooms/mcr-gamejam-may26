tag @s add this
execute at @p[tag=this] summon item run item replace entity @s contents from entity @n[type=item_display,tag=this] contents
item replace entity @s contents with air
tag @s remove this
tag @a remove this