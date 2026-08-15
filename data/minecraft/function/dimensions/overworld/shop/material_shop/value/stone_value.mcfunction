execute store result storage data tmp.material_shop.stone.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/material_shop/value/stone_data_by_lvl with storage data tmp.material_shop.stone
data remove storage data tmp.material_shop.stone.now
data modify storage data tmp.material_shop.stone.now set from storage data tmp.material_shop.stone.tmp
data remove storage data tmp.material_shop.stone.lvl
data remove storage data tmp.material_shop.stone.tmp
execute store result score #stone_value tmp run data get storage data tmp.material_shop.stone.now.value
scoreboard players set #stone_advancement_multiplier tmp 1
execute if score #overworld_11_stone_multiplier advancement matches 1.. run scoreboard players operation #stone_advancement_multiplier tmp = #overworld_11_stone_multiplier advancement
scoreboard players operation #stone_value tmp *= #stone_advancement_multiplier tmp
scoreboard players set #quartz_return_multiplier tmp 0
execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
scoreboard players set #thousand tmp 1000
return run scoreboard players get #stone_value tmp
