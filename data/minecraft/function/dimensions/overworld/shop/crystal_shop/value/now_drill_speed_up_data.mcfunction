# 현재 drill_speed_up 상점 업그레이드 데이터를 tmp.crystal_shop.drill_speed_up.now에 저장

execute unless score #drill_speed_up_lvl crystal_shop = #drill_speed_up_lvl crystal_shop run scoreboard players set #drill_speed_up_lvl crystal_shop 0

function dimensions/overworld/shop/crystal_shop/value/drill_speed_up_data_by_lvl with storage data tmp.crystal_shop.drill_speed_up
data remove storage data tmp.crystal_shop.drill_speed_up.now
data modify storage data tmp.crystal_shop.drill_speed_up.now set from storage data tmp.crystal_shop.drill_speed_up.tmp
data remove storage data tmp.crystal_shop.drill_speed_up.lvl
data remove storage data tmp.crystal_shop.drill_speed_up.tmp
