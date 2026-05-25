tp @a 286.5 65.0 286.5
clear @a
effect give @a instant_health infinite 0 true
effect give @a saturation infinite 0 true
#execute as @a run function game:player/give/crossbar
#execute as @a run function game:player/give/blaster
#execute as @a run function game:player/give/bomber
#execute as @a run function game:player/give/boost
#execute as @a run function game:player/give/laser
#execute as @a run function game:player/give/mask_t
#execute as @a run function game:player/give/saw
#execute as @a run function game:player/give/slicer
execute as @a run function game:player/start
give @a minecraft:carrot_on_a_stick[custom_data={upgrader:1b},item_model="minecraft:netherite_upgrade_smithing_template",item_name=[{text:"Upgrade Wand",italic:false}]]

scoreboard players set .run_game .calc 1

scoreboard players set .game_time .calc 1

fill 336 65 210 206 67 343 air replace minecraft:moss_carpet
fill 336 65 210 206 67 343 air replace minecraft:oak_leaves
kill @e[type=zombie]
kill @e[type=item]