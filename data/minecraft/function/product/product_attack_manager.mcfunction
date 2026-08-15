execute if entity @s[tag=blaze] on attacker run return run function product/nether/blaze/regen/attack
execute positioned -76.5 1.5 13.5 if entity @s[tag=mob,tag=!blaze,distance=..1] on attacker run return run function product/nether/blaze/regen/attack
execute if entity @s[tag=mob] on attacker run function product/overworld/mob/regen/attack
