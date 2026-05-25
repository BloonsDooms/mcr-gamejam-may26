tag @s[tag=mask] add mask_off
tag @s[tag=!mask] add mask_on

item replace entity @s[tag=mask_on] armor.head with carved_pumpkin[enchantments={"binding_curse":1},enchantment_glint_override=false] 1
item replace entity @s[tag=mask_off] armor.head with air