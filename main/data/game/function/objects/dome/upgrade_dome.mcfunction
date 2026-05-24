# nearest dome to upgrade
tag @n[tag=dome,distance=..20] add this


tag @n[tag=this,tag=level2] add level3
tag @n[tag=this,tag=level1] add level2
tag @n[tag=this,tag=level0] add level1

tag @n[tag=this,tag=level3,tag=level2] remove level2
tag @n[tag=this,tag=level2,tag=level1] remove level1
tag @n[tag=this,tag=level1,tag=level0] remove level0


execute as @n[tag=this,tag=drill] at @s run function game:objects/dome/change_dome_to_drill
execute as @n[tag=this,tag=lab] at @s run function game:objects/dome/change_dome_to_lab
execute as @n[tag=this,tag=greenhouse] at @s run function game:objects/dome/change_dome_to_greenhouse
execute as @n[tag=this,tag=!drill,tag=!lab,tag=!greenhouse] at @s run function game:objects/dome/change_dome_to_empty

tag @n remove this
