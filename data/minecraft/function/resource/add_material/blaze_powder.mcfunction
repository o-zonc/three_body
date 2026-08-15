scoreboard players set #material_max tmp 999999999
execute if score #material_add_value tmp matches ..0 run return 0
execute if score #blaze_powder material matches ..-1 run scoreboard players set #blaze_powder material 0
scoreboard players operation #material_add_limit tmp = #material_max tmp
scoreboard players operation #material_add_limit tmp -= #blaze_powder material
execute if score #material_add_limit tmp matches ..0 run scoreboard players operation #blaze_powder material = #material_max tmp
execute if score #material_add_limit tmp matches ..0 run return 0
execute if score #material_add_value tmp > #material_add_limit tmp run scoreboard players operation #material_add_value tmp = #material_add_limit tmp
scoreboard players operation #blaze_powder material += #material_add_value tmp