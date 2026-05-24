# brain for door
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["init","door"]}
execute store result score @n[tag=init,tag=door] object.id run scoreboard players add #id object.id 1
scoreboard players set @n[tag=init,tag=door] t1 0

rotate @n[tag=init,tag=door] ~ ~
#execute if entity @s[x_rotation=90] run rotate @n[tag=init,tag=door] 90 0
#execute if entity @s[x_rotation=180] run rotate @n[tag=init,tag=door] 180 0
#execute if entity @s[x_rotation=270] run rotate @n[tag=init,tag=door] 270 0


# displays
execute at @n[tag=init,tag=door] run summon item_display ~ ~ ~ {Tags:["door_left"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1f,-0.625f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}
execute at @n[tag=init,tag=door] run summon item_display ~ ~ ~ {Tags:["door_right"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,3f,-0.625f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}

execute rotated as @n[tag=init,tag=door] run rotate @n[tag=door_left] ~ ~
execute rotated as @n[tag=init,tag=door] run rotate @n[tag=door_right] ~ ~

execute at @n[tag=init,tag=door] run fill ^-1 ^ ^ ^1 ^3 ^ yellow_stained_glass_pane
tag @e remove init