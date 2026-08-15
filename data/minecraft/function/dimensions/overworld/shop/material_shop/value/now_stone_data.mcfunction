# 현재 stone 상점 업그레이드 데이터를 tmp.material_shop.stone.now에 저장

execute unless score #stone_lvl material_shop = #stone_lvl material_shop run scoreboard players set #stone_lvl material_shop 0

execute store result storage data tmp.material_shop.stone.lvl int 1 run scoreboard players get #stone_lvl material_shop
function dimensions/overworld/shop/material_shop/value/stone_data_by_lvl with storage data tmp.material_shop.stone
data remove storage data tmp.material_shop.stone.now
data modify storage data tmp.material_shop.stone.now set from storage data tmp.material_shop.stone.tmp
data remove storage data tmp.material_shop.stone.lvl
data remove storage data tmp.material_shop.stone.tmp
