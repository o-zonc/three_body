# 현재 material_shop_cost_down 상점 업그레이드 데이터를 tmp.crystal_shop.material_shop_cost_down.now에 저장

execute unless score #material_shop_cost_down_lvl crystal_shop = #material_shop_cost_down_lvl crystal_shop run scoreboard players set #material_shop_cost_down_lvl crystal_shop 0

execute store result storage data tmp.crystal_shop.material_shop_cost_down.lvl int 1 run scoreboard players get #material_shop_cost_down_lvl crystal_shop
function dimensions/overworld/shop/crystal_shop/value/material_shop_cost_down_data_by_lvl with storage data tmp.crystal_shop.material_shop_cost_down
data remove storage data tmp.crystal_shop.material_shop_cost_down.now
data modify storage data tmp.crystal_shop.material_shop_cost_down.now set from storage data tmp.crystal_shop.material_shop_cost_down.tmp
data remove storage data tmp.crystal_shop.material_shop_cost_down.lvl
data remove storage data tmp.crystal_shop.material_shop_cost_down.tmp
