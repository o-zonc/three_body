# 현재 iron 상점 업그레이드 데이터를 tmp.material_shop.iron.now에 저장

execute unless score #iron_lvl material_shop = #iron_lvl material_shop run scoreboard players set #iron_lvl material_shop 0

execute store result storage data tmp.material_shop.iron.lvl int 1 run scoreboard players get #iron_lvl material_shop
function dimensions/overworld/shop/material_shop/value/iron_data_by_lvl with storage data tmp.material_shop.iron
data remove storage data tmp.material_shop.iron.now
data modify storage data tmp.material_shop.iron.now set from storage data tmp.material_shop.iron.tmp
data remove storage data tmp.material_shop.iron.lvl
data remove storage data tmp.material_shop.iron.tmp
