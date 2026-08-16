# 현재 cave_material_regen_speed_up 상점 업그레이드 value 값을 반환

function dimensions/overworld/shop/crystal_shop/value/cave_material_regen_speed_up_data_by_lvl with storage data tmp.crystal_shop.cave_material_regen_speed_up
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.now
data modify storage data tmp.crystal_shop.cave_material_regen_speed_up.now set from storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.lvl
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
return run data get storage data tmp.crystal_shop.cave_material_regen_speed_up.now.value