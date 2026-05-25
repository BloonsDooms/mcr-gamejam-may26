data modify storage game version.datapack set value "0.2"

tellraw @a [{text:">> Datapack Version: ",color:"gray"},{storage:"minecraft:game",nbt:"version.datapack"},{text:"\n"},\
            {text:">> World Version: ",color:"gray"},{storage:"minecraft:game",nbt:"version.world"},{text:"\n"}]


function game:init/scoreboard
function game:init/storage
function game:init/team
function game:init/sign