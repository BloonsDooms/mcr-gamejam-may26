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

give @s golden_apple[item_name={"text":"we didn't finish lol. east this to reset items"}]
give @s frog_spawn_egg[item_name={"text":"place these in the open to create more domes. these will not reset"},can_place_on=[{blocks:"cherry_wood"}]] 3

scoreboard players set @s lol 0

effect clear @s minecraft:absorption