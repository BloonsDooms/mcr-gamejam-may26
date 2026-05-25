tag @n[tag=dome] add this
execute at @n[tag=this] run tag @e[distance=..30,tag=dome,tag=!this] add target


# each level combination needs its own set. Yes.

############################################################################################################################

# level 0 to level 0.
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^6 ^2 ^5 ^20 polished_tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^1 ^6 ^2 ^4 ^20 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^5 ^6 ^1 ^5 ^20 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^ ^6 ^1 ^ ^20 tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^5 ^2 ^5 ^5 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^21 ^2 ^5 ^21 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^1 ^5 ^1 ^4 ^21 air

# level 0 to level 1.
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^6 ^2 ^5 ^19 polished_tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^1 ^6 ^2 ^4 ^19 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^5 ^6 ^1 ^5 ^19 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^ ^6 ^1 ^ ^19 tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^5 ^2 ^5 ^5 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^20 ^2 ^5 ^20 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^1 ^5 ^1 ^4 ^20 air

# level 0 to level 2.
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^6 ^2 ^5 ^17 polished_tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^1 ^6 ^2 ^4 ^17 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^5 ^6 ^1 ^5 ^17 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^ ^6 ^1 ^ ^17 tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^5 ^2 ^5 ^5 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^18 ^2 ^5 ^18 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^1 ^5 ^1 ^4 ^18 air

# level 0 to level 3.
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^6 ^2 ^5 ^15 polished_tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^1 ^6 ^2 ^4 ^15 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^5 ^6 ^1 ^5 ^15 glass
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^ ^6 ^1 ^ ^15 tuff
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^5 ^2 ^5 ^5 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^16 ^2 ^5 ^16 smooth_basalt
execute as @e[tag=target,tag=level0] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^1 ^5 ^1 ^4 ^16 air

############################################################################################################################

# level 1 to level 0.
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^7 ^2 ^5 ^20 polished_tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^1 ^7 ^2 ^4 ^20 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^5 ^7 ^1 ^5 ^20 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^ ^7 ^1 ^ ^20 tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^6 ^2 ^5 ^6 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^21 ^2 ^5 ^21 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^1 ^6 ^1 ^4 ^21 air

# level 1 to level 1.
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^7 ^2 ^5 ^19 polished_tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^1 ^7 ^2 ^4 ^19 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^5 ^7 ^1 ^5 ^19 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^ ^7 ^1 ^ ^19 tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^6 ^2 ^5 ^6 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^20 ^2 ^5 ^20 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^1 ^6 ^1 ^4 ^20 air

# level 1 to level 2.
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^7 ^2 ^5 ^17 polished_tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^1 ^7 ^2 ^4 ^17 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^5 ^7 ^1 ^5 ^17 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^ ^7 ^1 ^ ^17 tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^6 ^2 ^5 ^6 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^18 ^2 ^5 ^18 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^1 ^6 ^1 ^4 ^18 air

# level 1 to level 3.
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^7 ^2 ^5 ^15 polished_tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^1 ^7 ^2 ^4 ^15 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^5 ^7 ^1 ^5 ^15 glass
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^ ^7 ^1 ^ ^15 tuff
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^6 ^2 ^5 ^6 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^16 ^2 ^5 ^16 smooth_basalt
execute as @e[tag=target,tag=level1] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^1 ^6 ^1 ^4 ^16 air

############################################################################################################################

# level 2 to level 0.
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^9 ^2 ^5 ^20 polished_tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^1 ^9 ^2 ^4 ^20 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^5 ^9 ^1 ^5 ^20 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^ ^9 ^1 ^ ^20 tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^8 ^2 ^5 ^8 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^21 ^2 ^5 ^21 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^1 ^8 ^1 ^4 ^21 air

# level 2 to level 1.
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^9 ^2 ^5 ^19 polished_tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^1 ^9 ^2 ^4 ^19 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^5 ^9 ^1 ^5 ^19 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^ ^9 ^1 ^ ^19 tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^8 ^2 ^5 ^8 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^20 ^2 ^5 ^20 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^1 ^8 ^1 ^4 ^20 air

# level 2 to level 2.
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^9 ^2 ^5 ^17 polished_tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^1 ^9 ^2 ^4 ^17 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^5 ^9 ^1 ^5 ^17 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^ ^9 ^1 ^ ^17 tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^8 ^2 ^5 ^8 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^18 ^2 ^5 ^18 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^1 ^8 ^1 ^4 ^18 air

# level 2 to level 3.
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^9 ^2 ^5 ^15 polished_tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^1 ^9 ^2 ^4 ^15 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^5 ^9 ^1 ^5 ^15 glass
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^ ^9 ^1 ^ ^15 tuff
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^8 ^2 ^5 ^8 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^16 ^2 ^5 ^16 smooth_basalt
execute as @e[tag=target,tag=level2] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^1 ^8 ^1 ^4 ^16 air

############################################################################################################################

# level 3 to level 0.
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^11 ^2 ^5 ^20 polished_tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^1 ^11 ^2 ^4 ^20 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^5 ^11 ^1 ^5 ^20 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^ ^11 ^1 ^ ^20 tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^10 ^2 ^5 ^10 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-2 ^ ^21 ^2 ^5 ^21 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level0] feet run fill ^-1 ^1 ^9 ^1 ^4 ^21 air

# level 3 to level 1.
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^11 ^2 ^5 ^19 polished_tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^1 ^11 ^2 ^4 ^19 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^5 ^11 ^1 ^5 ^19 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^ ^11 ^1 ^ ^19 tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^10 ^2 ^5 ^10 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-2 ^ ^20 ^2 ^5 ^20 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level1] feet run fill ^-1 ^1 ^9 ^1 ^4 ^20 air

# level 3 to level 2.
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^11 ^2 ^5 ^17 polished_tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^1 ^11 ^2 ^4 ^17 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^5 ^11 ^1 ^5 ^17 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^ ^11 ^1 ^ ^17 tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^10 ^2 ^5 ^10 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-2 ^ ^18 ^2 ^5 ^18 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level2] feet run fill ^-1 ^1 ^9 ^1 ^4 ^18 air

# level 3 to level 3.
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^11 ^2 ^5 ^15 polished_tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^1 ^11 ^2 ^4 ^15 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^5 ^11 ^1 ^5 ^15 glass
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^ ^11 ^1 ^ ^15 tuff
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^10 ^2 ^5 ^10 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-2 ^ ^16 ^2 ^5 ^16 smooth_basalt
execute as @e[tag=target,tag=level3] at @s facing entity @n[tag=this,tag=level3] feet run fill ^-1 ^1 ^9 ^1 ^4 ^16 air



# door in center of path
execute as @e[tag=target] at @s facing entity @n[tag=this] feet run fill ^-2 ^ ^13 ^2 ^5 ^13 polished_blackstone
execute as @e[tag=target] at @s facing entity @n[tag=this] feet run fill ^-1 ^1 ^13 ^1 ^4 ^13 air

execute as @e[tag=target] at @s facing entity @n[tag=this] feet positioned ^ ^1 ^13 unless entity @n[tag=door_hookpoint,distance=..2] run summon marker ~ ~ ~ {Tags:["door_hookpoint","level0"]}
execute as @e[tag=target] at @s facing entity @n[tag=this] feet positioned ^ ^1 ^13 run rotate @n[tag=door_hookpoint,distance=..2] ~ ~
#function game:objects/doors/new_door

tag @e remove this
tag @e remove target