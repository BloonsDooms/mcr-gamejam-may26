place template game:domes/dome_spawner ~-1 ~ ~-1
summon text_display ~ ~3 ~ {Tags:["dome_spawner"],text:[{text:"Progress: ",color:"green"},{score:{name:"@n[type=text_display,tag=dome_spawner]",objective:"t1"}},{text:"%"}],\
                                transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},billboard:"vertical"}

kill @s