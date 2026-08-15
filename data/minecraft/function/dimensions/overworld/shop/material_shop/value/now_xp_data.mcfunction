# 현재 xp 상점 업그레이드 데이터를 tmp.material_shop.xp.now에 저장

execute unless score #xp_lvl material_shop = #xp_lvl material_shop run scoreboard players set #xp_lvl material_shop 0

execute store result storage data tmp.material_shop.xp.lvl int 1 run scoreboard players get #xp_lvl material_shop
function dimensions/overworld/shop/material_shop/value/xp_data_by_lvl with storage data tmp.material_shop.xp
data remove storage data tmp.material_shop.xp.now
data modify storage data tmp.material_shop.xp.now set from storage data tmp.material_shop.xp.tmp
data remove storage data tmp.material_shop.xp.lvl
data remove storage data tmp.material_shop.xp.tmp
