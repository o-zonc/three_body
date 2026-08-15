execute if entity @s[tag=wood] on target run function product/overworld/wood/ui/interact
execute if entity @s[tag=stone] on target run function product/overworld/stone/ui/interact
execute if entity @s[tag=mob] on target run function product/overworld/mob/ui/interact
execute if entity @s[tag=coal] on target run function product/overworld/coal/ui/interact
execute if entity @s[tag=iron] on target run function product/overworld/iron/ui/interact
execute if entity @s[tag=obsidian] on target run function product/overworld/obsidian/ui/interact
execute if entity @s[tag=quartz] on target run function product/nether/quartz/ui/interact
execute if entity @s[tag=gold] on target run function product/nether/gold/ui/interact
execute if entity @s[tag=blaze] on target run function product/nether/blaze/ui/interact
execute positioned -76.5 1.5 13.5 if entity @s[tag=mob,tag=!blaze,distance=..1] on target run function product/nether/blaze/ui/interact
