# clicker already tagged this
data remove entity @s attack
data remove entity @s interaction
execute on passengers if data entity @s item run return run function game:objects/charge_station/remove_item
execute if score @p[tag=this] equip_item matches 1..5 run return run function game:objects/charge_station/put_item
execute if items entity @p[tag=this] weapon.mainhand charcoal run return run function game:objects/charge_station/add_fuel