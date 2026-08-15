# 현재 cave_material_regen_speed_up 상점 업그레이드 데이터를 tmp.crystal_shop.cave_material_regen_speed_up.now에 저장

execute unless score #cave_material_regen_speed_up_lvl crystal_shop = #cave_material_regen_speed_up_lvl crystal_shop run scoreboard players set #cave_material_regen_speed_up_lvl crystal_shop 0

execute store result storage data tmp.crystal_shop.cave_material_regen_speed_up.lvl int 1 run scoreboard players get #cave_material_regen_speed_up_lvl crystal_shop
function dimensions/overworld/shop/crystal_shop/value/cave_material_regen_speed_up_data_by_lvl with storage data tmp.crystal_shop.cave_material_regen_speed_up
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.now
data modify storage data tmp.crystal_shop.cave_material_regen_speed_up.now set from storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.lvl
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
