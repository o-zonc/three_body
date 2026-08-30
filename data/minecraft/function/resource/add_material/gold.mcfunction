scoreboard players set #material_max tmp 999999999
execute if score #material_add_value tmp matches ..0 run return 0
function resource/catalyst/apply_multiplier
execute if score #gold material matches ..-1 run scoreboard players set #gold material 0
scoreboard players operation #material_add_limit tmp = #material_max tmp
scoreboard players operation #material_add_limit tmp -= #gold material
execute if score #material_add_limit tmp matches ..0 run scoreboard players operation #gold material = #material_max tmp
execute if score #material_add_limit tmp matches ..0 run return 0
execute if score #material_add_value tmp > #material_add_limit tmp run scoreboard players operation #material_add_value tmp = #material_add_limit tmp
scoreboard players operation #gold material += #material_add_value tmp