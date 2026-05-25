execute store result score @s hotbar run data get entity @s SelectedItemSlot
execute unless score @s hotbar = @s hotbar_t run tag @s add switch
scoreboard players operation @s hotbar_t = @s hotbar

scoreboard players set @s[tag=switch,scores={equip_item=1,action_timer=1..}] action_cooldown 40
scoreboard players set @s[tag=switch,scores={equip_item=1,action_timer=1..}] action_cooldown_max 40

scoreboard players set @s[tag=switch] action_timer 0
scoreboard players set @s[tag=switch] equip_time 999

# detect held item
# 1-laser 2-blaster 3-slicer 4-bomber 5-hose 6-upgrader 7-mask
scoreboard players set @s equip_item 0
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={laser:1b}] run scoreboard players set @s equip_item 1
execute if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players set @s equip_item 2
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={slicer:1b}] run scoreboard players set @s equip_item 3
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={bomb:1b}] run scoreboard players set @s equip_item 4
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={hose:1b}] run scoreboard players set @s equip_item 5
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={upgrader:1b}] run scoreboard players set @s equip_item 6
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={mask:1b}] run scoreboard players set @s equip_item 7

scoreboard players set @s[tag=switch,scores={equip_item=0}] equip_time 0
title @s[tag=switch,scores={equip_item=0}] actionbar [{"text":""}]

playsound minecraft:ui.toast.out master @s[tag=switch,scores={equip_item=1..}] ~ ~ ~ 1 2
scoreboard players set @s[tag=switch,scores={equip_item=1}] equip_time 15
scoreboard players set @s[tag=switch,scores={equip_item=1}] equip_time_max 15

scoreboard players set @s[tag=switch,scores={equip_item=2}] equip_time 5
scoreboard players set @s[tag=switch,scores={equip_item=2}] equip_time_max 5

scoreboard players set @s[tag=switch,scores={equip_item=3}] equip_time 15
scoreboard players set @s[tag=switch,scores={equip_item=3}] equip_time_max 15

scoreboard players set @s[tag=switch,scores={equip_item=4}] equip_time 20
scoreboard players set @s[tag=switch,scores={equip_item=4}] equip_time_max 20

scoreboard players set @s[tag=switch,scores={equip_item=6}] equip_time 0
scoreboard players set @s[tag=switch,scores={equip_item=6}] equip_time_max 0

scoreboard players set @s[tag=switch,scores={equip_item=7}] equip_time 0
scoreboard players set @s[tag=switch,scores={equip_item=7}] equip_time_max 0

#blaster
execute unless items entity @s weapon.mainhand *[damage=120] run item replace entity @s[scores={equip_item=2,equip_time=..0}] inventory.8 with minecraft:arrow
execute unless entity @s[scores={equip_item=2,equip_time=..0}] run item replace entity @s inventory.8 with minecraft:stone
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=..0}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=10]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=1}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=20]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=2}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=30]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=3}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=40]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=4}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=50]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=5}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=60]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=6}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=70]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=7}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=80]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=8}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=90]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=9}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=100]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=10}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=110]
execute if items entity @s weapon.mainhand iron_ingot run item replace entity @s[scores={damage_temp=11..}] weapon.mainhand with crossbow[item_name=[{"text":"Blaster (Right-Click)"}],enchantments={"quick_charge":2},enchantment_glint_override=false,max_damage=120,damage=120]
execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] run function game:player/blast/trigger
execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[{id:"minecraft:arrow",count:1}]] run item replace entity @s weapon.mainhand with minecraft:iron_ingot

#
execute as @s[scores={equip_time=1..}] run function game:player/ui/equip_time

# start laser
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=1}] unless items entity @s weapon.mainhand *[damage=25] run scoreboard players set @s action_timer_max 22
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=1}] unless items entity @s weapon.mainhand *[damage=25] run scoreboard players set @s action_timer 22

execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=3}] unless items entity @s weapon.mainhand *[damage=25] run function game:player/slice/trigger

execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=4}] unless items entity @s weapon.mainhand *[damage=25] run function game:player/bomb/trigger

#mask
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=7}] run function game:player/maskt

# upgrader
execute as @s[scores={click=1..,action_timer=..0,equip_time=..0,action_cooldown=..0,equip_item=6}] run function game:player/upgrader/trigger

execute as @s[scores={action_timer=1..}] run function game:player/ui/action_time

execute as @s[scores={equip_item=1,action_timer=1..}] run function game:player/laser/start

scoreboard players set @s click 0

execute as @s[scores={action_cooldown=0..}] run function game:player/ui/action_cooldown

scoreboard players remove @s[scores={action_cooldown=-10..}] action_cooldown 1
title @s[scores={action_cooldown=-6,action_timer=..0,equip_time=..0}] actionbar [{"text":""}]

scoreboard players remove @s[scores={action_timer=1..}] action_timer 1

playsound minecraft:ui.toast.in master @s[scores={equip_time=1,action_cooldown=..0}] ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup master @s[scores={equip_time=1,action_cooldown=..0}] ~ ~ ~ 1 2
title @s[scores={equip_time=1,action_cooldown=..0}] actionbar [{"text":"Equiping : "},{"text":"□□□□□□□□□□","color":"green"}]
scoreboard players remove @s[scores={equip_time=1..}] equip_time 1
tag @s remove switch

#thorns
execute if block ~ ~ ~1 pale_oak_button[facing=north,face=wall] run tag @s add spike
execute if block ~ ~1 ~1 pale_oak_button[facing=north,face=wall] run tag @s add spike
execute if block ~ ~ ~-1 pale_oak_button[facing=south,face=wall] run tag @s add spike
execute if block ~ ~1 ~-1 pale_oak_button[facing=south,face=wall] run tag @s add spike
execute if block ~1 ~ ~ pale_oak_button[facing=west,face=wall] run tag @s add spike
execute if block ~1 ~1 ~ pale_oak_button[facing=west,face=wall] run tag @s add spike
execute if block ~-1 ~ ~ pale_oak_button[facing=east,face=wall] run tag @s add spike
execute if block ~-1 ~1 ~ pale_oak_button[facing=east,face=wall] run tag @s add spike
execute if block ~ ~-1 ~ pale_oak_button[face=floor] run tag @s add spike
execute if block ~ ~ ~ pale_oak_button run tag @s add spike
execute if block ~ ~1 ~ pale_oak_button run tag @s add spike

damage @s[tag=spike,scores={damage_cool=..0}] 3
scoreboard players remove @s[scores={damage_cool=1..}] damage_cool 1
scoreboard players set @s[tag=spike,scores={damage_cool=1..}] damage_cool 8
tag @s remove spike

execute unless entity @s[team=safe] run team join safe

execute as @s[scores={use_boost=1..}] run function game:player/give/boost
scoreboard players set @s[scores={use_boost=1..}] boost 20
scoreboard players set @s use_boost 0

effect give @s[scores={boost=20}] levitation 1 6 true
effect clear @s[scores={boost=17}] levitation
attribute @s[scores={boost=20}] minecraft:gravity base set -0.4
attribute @s[scores={boost=14..19}] minecraft:gravity base set -0.1
attribute @s[scores={boost=12..13}] minecraft:gravity base set -0.05
attribute @s[scores={boost=9..11}] minecraft:gravity base set 0.0
attribute @s[scores={boost=7..9}] minecraft:gravity base set 0.02
attribute @s[scores={boost=5..6}] minecraft:gravity base set 0.04
attribute @s[scores={boost=2..4}] minecraft:gravity base set 0.06
attribute @s[scores={boost=..1}] minecraft:gravity base set 0.08

scoreboard players remove @s[scores={boost=0..}] boost 1

scoreboard players add @s oxygenT 1

tag @s remove inside
execute store result score .y .calc run data get entity @s Pos[1]
execute if score .y .calc matches ..69 if block ~ 49 ~ gold_block run tag @s add inside

execute positioned -30 68 248 run tag @s[distance=..40] add inside
execute positioned -30 68 248 run effect give @s[distance=..40] instant_health 1 0 true

scoreboard players remove @s[tag=mask,scores={oxygenT=15..,oxygen=0..}] oxygen 1
scoreboard players set @s[tag=mask,scores={oxygenT=15..}] oxygenT 0

scoreboard players remove @s[tag=!inside,tag=!mask,scores={oxygenT=15..,oxygen=0..}] oxygen 1
scoreboard players set @s[tag=!inside,tag=!mask,scores={oxygenT=15..}] oxygenT 0

scoreboard players add @s[tag=inside,tag=!mask,scores={oxygenT=4..,oxygen=..99}] oxygen 1
scoreboard players set @s[tag=inside,tag=!mask,scores={oxygenT=4..}] oxygenT 0

scoreboard players set @s[scores={oxygen=..20},tag=inside] oxygen 20
effect give @s[scores={oxygen=..0}] wither 1 2 true
effect give @s[tag=!mask,tag=!inside] wither 1 2 true

xp set @s 0 points
xp set @s[scores={oxygen=100..}] 100 levels
xp set @s[scores={oxygen=99}] 99 levels
xp set @s[scores={oxygen=98}] 98 levels
xp set @s[scores={oxygen=97}] 97 levels
xp set @s[scores={oxygen=96}] 96 levels
xp set @s[scores={oxygen=95}] 95 levels
xp set @s[scores={oxygen=94}] 94 levels
xp set @s[scores={oxygen=93}] 93 levels
xp set @s[scores={oxygen=92}] 92 levels
xp set @s[scores={oxygen=91}] 91 levels
xp set @s[scores={oxygen=90}] 90 levels
xp set @s[scores={oxygen=89}] 89 levels
xp set @s[scores={oxygen=88}] 88 levels
xp set @s[scores={oxygen=87}] 87 levels
xp set @s[scores={oxygen=86}] 86 levels
xp set @s[scores={oxygen=85}] 85 levels
xp set @s[scores={oxygen=84}] 84 levels
xp set @s[scores={oxygen=83}] 83 levels
xp set @s[scores={oxygen=82}] 82 levels
xp set @s[scores={oxygen=81}] 81 levels
xp set @s[scores={oxygen=80}] 80 levels
xp set @s[scores={oxygen=79}] 79 levels
xp set @s[scores={oxygen=78}] 78 levels
xp set @s[scores={oxygen=77}] 77 levels
xp set @s[scores={oxygen=76}] 76 levels
xp set @s[scores={oxygen=75}] 75 levels
xp set @s[scores={oxygen=74}] 74 levels
xp set @s[scores={oxygen=73}] 73 levels
xp set @s[scores={oxygen=72}] 72 levels
xp set @s[scores={oxygen=71}] 71 levels
xp set @s[scores={oxygen=70}] 70 levels
xp set @s[scores={oxygen=69}] 69 levels
xp set @s[scores={oxygen=68}] 68 levels
xp set @s[scores={oxygen=67}] 67 levels
xp set @s[scores={oxygen=66}] 66 levels
xp set @s[scores={oxygen=65}] 65 levels
xp set @s[scores={oxygen=64}] 64 levels
xp set @s[scores={oxygen=63}] 63 levels
xp set @s[scores={oxygen=62}] 62 levels
xp set @s[scores={oxygen=61}] 61 levels
xp set @s[scores={oxygen=60}] 60 levels
xp set @s[scores={oxygen=59}] 59 levels
xp set @s[scores={oxygen=58}] 58 levels
xp set @s[scores={oxygen=57}] 57 levels
xp set @s[scores={oxygen=56}] 56 levels
xp set @s[scores={oxygen=55}] 55 levels
xp set @s[scores={oxygen=54}] 54 levels
xp set @s[scores={oxygen=53}] 53 levels
xp set @s[scores={oxygen=52}] 52 levels
xp set @s[scores={oxygen=51}] 51 levels
xp set @s[scores={oxygen=50}] 50 levels
xp set @s[scores={oxygen=49}] 49 levels
xp set @s[scores={oxygen=48}] 48 levels
xp set @s[scores={oxygen=47}] 47 levels
xp set @s[scores={oxygen=46}] 46 levels
xp set @s[scores={oxygen=45}] 45 levels
xp set @s[scores={oxygen=44}] 44 levels
xp set @s[scores={oxygen=43}] 43 levels
xp set @s[scores={oxygen=42}] 42 levels
xp set @s[scores={oxygen=41}] 41 levels
xp set @s[scores={oxygen=40}] 40 levels
xp set @s[scores={oxygen=39}] 39 levels
xp set @s[scores={oxygen=38}] 38 levels
xp set @s[scores={oxygen=37}] 37 levels
xp set @s[scores={oxygen=36}] 36 levels
xp set @s[scores={oxygen=35}] 35 levels
xp set @s[scores={oxygen=34}] 34 levels
xp set @s[scores={oxygen=33}] 33 levels
xp set @s[scores={oxygen=32}] 32 levels
xp set @s[scores={oxygen=31}] 31 levels
xp set @s[scores={oxygen=30}] 30 levels
xp set @s[scores={oxygen=29}] 29 levels
xp set @s[scores={oxygen=28}] 28 levels
xp set @s[scores={oxygen=27}] 27 levels
xp set @s[scores={oxygen=26}] 26 levels
xp set @s[scores={oxygen=25}] 25 levels
xp set @s[scores={oxygen=24}] 24 levels
xp set @s[scores={oxygen=23}] 23 levels
xp set @s[scores={oxygen=22}] 22 levels
xp set @s[scores={oxygen=21}] 21 levels
xp set @s[scores={oxygen=20}] 20 levels
xp set @s[scores={oxygen=19}] 19 levels
xp set @s[scores={oxygen=18}] 18 levels
xp set @s[scores={oxygen=17}] 17 levels
xp set @s[scores={oxygen=16}] 16 levels
xp set @s[scores={oxygen=15}] 15 levels
xp set @s[scores={oxygen=14}] 14 levels
xp set @s[scores={oxygen=13}] 13 levels
xp set @s[scores={oxygen=12}] 12 levels
xp set @s[scores={oxygen=11}] 11 levels
xp set @s[scores={oxygen=10}] 10 levels
xp set @s[scores={oxygen=09}] 9 levels
xp set @s[scores={oxygen=08}] 8 levels
xp set @s[scores={oxygen=07}] 7 levels
xp set @s[scores={oxygen=06}] 6 levels
xp set @s[scores={oxygen=05}] 5 levels
xp set @s[scores={oxygen=04}] 4 levels
xp set @s[scores={oxygen=03}] 3 levels
xp set @s[scores={oxygen=02}] 2 levels
xp set @s[scores={oxygen=01}] 1 levels
xp set @s[scores={oxygen=..0}] 0 levels

effect give @s saturation infinite 0 true