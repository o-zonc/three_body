# 현재 material_shop_cost_down 상점 업그레이드 value 값을 반환

execute store result storage data tmp.crystal_shop.material_shop_cost_down.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/crystal_shop/value/material_shop_cost_down_data_by_lvl with storage data tmp.crystal_shop.material_shop_cost_down
data remove storage data tmp.crystal_shop.material_shop_cost_down.now
data modify storage data tmp.crystal_shop.material_shop_cost_down.now set from storage data tmp.crystal_shop.material_shop_cost_down.tmp
data remove storage data tmp.crystal_shop.material_shop_cost_down.lvl
data remove storage data tmp.crystal_shop.material_shop_cost_down.tmp
return run data get storage data tmp.crystal_shop.material_shop_cost_down.now.value