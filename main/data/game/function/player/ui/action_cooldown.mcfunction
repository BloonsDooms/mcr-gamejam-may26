scoreboard players operation .et .calc = @s action_cooldown
scoreboard players operation .etm .calc = @s action_cooldown_max
scoreboard players set .100 .calc 100

scoreboard players operation .et .calc *= .100 .calc
scoreboard players operation .et .calc /= .etm .calc

execute if score .et .calc matches 91.. run title @s actionbar [{"text":"Cooldown : "},{"text":"----------"}]
execute if score .et .calc matches 81..90 run title @s actionbar [{"text":"Cooldown : "},{"text":"□---------"}]
execute if score .et .calc matches 71..80 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□--------"}]
execute if score .et .calc matches 61..70 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□-------"}]
execute if score .et .calc matches 51..60 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□------"}]
execute if score .et .calc matches 41..50 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□-----"}]
execute if score .et .calc matches 31..40 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□□----"}]
execute if score .et .calc matches 21..30 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□□□---"}]
execute if score .et .calc matches 11..20 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□□□□--"}]
execute if score .et .calc matches 1..10 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□□□□□-"}]
execute if score .et .calc matches 0 run title @s actionbar [{"text":"Cooldown : "},{"text":"□□□□□□□□□□"}]
