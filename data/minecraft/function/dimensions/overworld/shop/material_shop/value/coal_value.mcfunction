# 현재 coal 상점 업그레이드 value 값을 반환

function trial/possibility/effective_level/mat_coal
execute store result storage data tmp.material_shop.coal.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/material_shop/value/coal_data_by_lvl with storage data tmp.material_shop.coal
data remove storage data tmp.material_shop.coal.now
data modify storage data tmp.material_shop.coal.now set from storage data tmp.material_shop.coal.tmp
data remove storage data tmp.material_shop.coal.lvl
data remove storage data tmp.material_shop.coal.tmp
execute store result score #coal_value tmp run data get storage data tmp.material_shop.coal.now.value
scoreboard players set #quartz_return_multiplier tmp 0
execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp = #coal_value tmp
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp = #coal_value tmp
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp *= #quartz material
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp *= #quartz material
scoreboard players set #thousand tmp 1000
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp /= #thousand tmp
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_return_multiplier tmp /= #thousand tmp
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #coal_value tmp += #quartz_return_multiplier tmp
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #coal_value tmp += #quartz_return_multiplier tmp
return run scoreboard players get #coal_value tmp
