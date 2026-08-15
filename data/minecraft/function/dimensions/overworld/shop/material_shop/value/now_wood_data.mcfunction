# 현재 wood 상점 업그레이드 데이터를 tmp.material_shop.wood.now에 저장

execute unless score #wood_lvl material_shop = #wood_lvl material_shop run scoreboard players set #wood_lvl material_shop 0

execute store result storage data tmp.material_shop.wood.lvl int 1 run scoreboard players get #wood_lvl material_shop
function dimensions/overworld/shop/material_shop/value/wood_data_by_lvl with storage data tmp.material_shop.wood
data remove storage data tmp.material_shop.wood.now
data modify storage data tmp.material_shop.wood.now set from storage data tmp.material_shop.wood.tmp
data remove storage data tmp.material_shop.wood.lvl
data remove storage data tmp.material_shop.wood.tmp
