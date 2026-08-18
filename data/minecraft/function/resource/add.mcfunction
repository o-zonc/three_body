# Macro args: id
scoreboard players set #material_max tmp 999999999
execute if score #material_add_value tmp matches ..0 run return 0
$execute if score #$(id) material matches ..-1 run scoreboard players set #$(id) material 0
scoreboard players operation #material_add_limit tmp = #material_max tmp
$scoreboard players operation #material_add_limit tmp -= #$(id) material
$execute if score #material_add_limit tmp matches ..0 run scoreboard players operation #$(id) material = #material_max tmp
execute if score #material_add_limit tmp matches ..0 run return 0
execute if score #material_add_value tmp > #material_add_limit tmp run scoreboard players operation #material_add_value tmp = #material_add_limit tmp
$scoreboard players operation #$(id) material += #material_add_value tmp
