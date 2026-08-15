# 현재 iron 상점 업그레이드 value 값을 반환

function trial/possibility/effective_level/mat_iron
execute store result storage data tmp.material_shop.iron.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/material_shop/value/iron_data_by_lvl with storage data tmp.material_shop.iron
data remove storage data tmp.material_shop.iron.now
data modify storage data tmp.material_shop.iron.now set from storage data tmp.material_shop.iron.tmp
data remove storage data tmp.material_shop.iron.lvl
data remove storage data tmp.material_shop.iron.tmp
return run data get storage data tmp.material_shop.iron.now.value