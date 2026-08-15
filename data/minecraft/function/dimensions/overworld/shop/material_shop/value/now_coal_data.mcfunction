# 현재 coal 상점 업그레이드 데이터를 tmp.material_shop.coal.now에 저장

execute unless score #coal_lvl material_shop = #coal_lvl material_shop run scoreboard players set #coal_lvl material_shop 0

execute store result storage data tmp.material_shop.coal.lvl int 1 run scoreboard players get #coal_lvl material_shop
function dimensions/overworld/shop/material_shop/value/coal_data_by_lvl with storage data tmp.material_shop.coal
data remove storage data tmp.material_shop.coal.now
data modify storage data tmp.material_shop.coal.now set from storage data tmp.material_shop.coal.tmp
data remove storage data tmp.material_shop.coal.lvl
data remove storage data tmp.material_shop.coal.tmp
