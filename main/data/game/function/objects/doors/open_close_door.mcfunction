#execute if entity @s[tag=closed] run tp @n[tag=door_left] ~ ~ ~1.3
#execute if entity @s[tag=closed] run tp @n[tag=door_right] ~ ~ ~-1.3


playsound entity.armadillo.eat block @a ~ ~ ~ 1 0 0
playsound block.piston.contract block @a ~ ~ ~ 0.6 0 0
playsound entity.breeze.inhale block @a ~ ~ ~ 1 2 0