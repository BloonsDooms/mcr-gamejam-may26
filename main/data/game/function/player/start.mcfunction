clear @s

function game:player/give/crossbar
function game:player/give/mask_t
function game:player/give/saw
function game:player/give/saw
function game:player/give/saw
function game:player/give/blaster
function game:player/give/slicer
function game:player/give/laser
function game:player/give/bomber
function game:player/give/boost
clear @s dirt

tag @s remove mask
tag @s add inside

scoreboard players set @s oxygen 100

tp @s 286.30 65.00 286.70 45 0

playsound minecraft:music_disc.cat master @s ~ ~ ~ 0.5 1 0.5

scoreboard players set @s boost -100