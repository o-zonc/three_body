# Apply crystal shop cave material regen cooldown reduction to #cave_material_regen_value tmp.

function dimensions/overworld/shop/crystal_shop/value/cave_material_regen_speed_up_data_by_lvl with storage data tmp.crystal_shop.cave_material_regen_speed_up
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.now
data modify storage data tmp.crystal_shop.cave_material_regen_speed_up.now set from storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.lvl
data remove storage data tmp.crystal_shop.cave_material_regen_speed_up.tmp
execute store result score #cave_material_regen_speed_up_percent tmp run data get storage data tmp.crystal_shop.cave_material_regen_speed_up.now.value 100
scoreboard players set #cave_material_regen_speed_multiplier tmp 100
scoreboard players operation #cave_material_regen_speed_multiplier tmp -= #cave_material_regen_speed_up_percent tmp
scoreboard players operation #cave_material_regen_value tmp *= #cave_material_regen_speed_multiplier tmp
scoreboard players set #cave_material_regen_speed_divisor tmp 100
scoreboard players operation #cave_material_regen_value tmp /= #cave_material_regen_speed_divisor tmp
execute if score #cave_material_regen_value tmp matches ..0 run scoreboard players set #cave_material_regen_value tmp 1