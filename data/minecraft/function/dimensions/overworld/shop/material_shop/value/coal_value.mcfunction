# 현재 coal 상점 업그레이드 value 값을 반환

function dimensions/overworld/shop/material_shop/value/coal_data_by_lvl with storage data tmp.material_shop.coal
data remove storage data tmp.material_shop.coal.now
data modify storage data tmp.material_shop.coal.now set from storage data tmp.material_shop.coal.tmp
data remove storage data tmp.material_shop.coal.lvl
data remove storage data tmp.material_shop.coal.tmp
execute store result score #coal_value tmp run data get storage data tmp.material_shop.coal.now.value
scoreboard players set #quartz_return_multiplier tmp 0
execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
scoreboard players set #thousand tmp 1000
return run scoreboard players get #coal_value tmp
