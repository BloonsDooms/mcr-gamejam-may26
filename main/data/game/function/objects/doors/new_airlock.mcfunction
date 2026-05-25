# brain for airlock
#execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["init","airlock"]}
summon marker ~ ~ ~ {Tags:["init","airlock"]}
execute store result score @n[tag=init,tag=airlock] object.id run scoreboard players add #id object.id 1
scoreboard players set @n[tag=init,tag=airlock] t1 0

rotate @n[tag=init,tag=airlock] ~ ~
#execute if entity @s[x_rotation=90] run rotate @n[tag=init,tag=airlock] 90 0
#execute if entity @s[x_rotation=180] run rotate @n[tag=init,tag=airlock] 180 0
#execute if entity @s[x_rotation=270] run rotate @n[tag=init,tag=airlock] 270 0


# displays
execute at @n[tag=init,tag=airlock] run summon item_display ~ ~ ~ {Tags:["airlock_inner_left"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1f,-3.025f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}
execute at @n[tag=init,tag=airlock] run summon item_display ~ ~ ~ {Tags:["airlock_inner_right"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,3f,-3.025f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}

execute at @n[tag=init,tag=airlock] run summon item_display ~ ~ ~ {Tags:["airlock_outer_left"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1f,1.975f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}
execute at @n[tag=init,tag=airlock] run summon item_display ~ ~ ~ {Tags:["airlock_outer_right"],shadow_radius:0f,width:5f,height:5f,billboard:"fixed",teleport_duration:4,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,3f,1.975f],scale:[2f,2f,2f]},item:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}

execute rotated as @n[tag=init,tag=airlock] run rotate @n[tag=airlock_inner_left] ~ ~
execute rotated as @n[tag=init,tag=airlock] run rotate @n[tag=airlock_inner_right] ~ ~

execute rotated as @n[tag=init,tag=airlock] run rotate @n[tag=airlock_outer_left] ~ ~
execute rotated as @n[tag=init,tag=airlock] run rotate @n[tag=airlock_outer_right] ~ ~

execute at @n[tag=init,tag=airlock] run fill ^-1 ^ ^3 ^1 ^3 ^3 yellow_stained_glass_pane
execute at @n[tag=init,tag=airlock] run fill ^-1 ^ ^-2 ^1 ^3 ^-2 yellow_stained_glass_pane
tag @e remove init