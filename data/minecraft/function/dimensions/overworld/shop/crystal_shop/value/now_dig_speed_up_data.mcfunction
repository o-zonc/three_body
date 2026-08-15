# 현재 dig_speed_up 상점 업그레이드 데이터를 tmp.crystal_shop.dig_speed_up.now에 저장

execute unless score #dig_speed_up_lvl crystal_shop = #dig_speed_up_lvl crystal_shop run scoreboard players set #dig_speed_up_lvl crystal_shop 0

function trial/possibility/effective_level/dig_speed
execute store result storage data tmp.crystal_shop.dig_speed_up.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/crystal_shop/value/dig_speed_up_data_by_lvl with storage data tmp.crystal_shop.dig_speed_up
data remove storage data tmp.crystal_shop.dig_speed_up.now
data modify storage data tmp.crystal_shop.dig_speed_up.now set from storage data tmp.crystal_shop.dig_speed_up.tmp
data remove storage data tmp.crystal_shop.dig_speed_up.lvl
data remove storage data tmp.crystal_shop.dig_speed_up.tmp
