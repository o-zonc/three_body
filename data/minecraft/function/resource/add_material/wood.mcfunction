scoreboard players set #material_max tmp 999999999
execute if score #material_add_value tmp matches ..0 run return 0
execute if score #wood material matches ..-1 run scoreboard players set #wood material 0
scoreboard players operation #material_add_limit tmp = #material_max tmp
scoreboard players operation #material_add_limit tmp -= #wood material
execute if score #material_add_limit tmp matches ..0 run scoreboard players operation #wood material = #material_max tmp
execute if score #material_add_limit tmp matches ..0 run return 0
execute if score #material_add_value tmp > #material_add_limit tmp run scoreboard players operation #material_add_value tmp = #material_add_limit tmp
scoreboard players operation #wood material += #material_add_value tmp