function trial/possibility/effective_level/mat_xp
execute store result storage data tmp.material_shop.xp.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/material_shop/value/xp_data_by_lvl with storage data tmp.material_shop.xp
data remove storage data tmp.material_shop.xp.now
data modify storage data tmp.material_shop.xp.now set from storage data tmp.material_shop.xp.tmp
data remove storage data tmp.material_shop.xp.lvl
data remove storage data tmp.material_shop.xp.tmp
execute store result score #xp_value tmp run data get storage data tmp.material_shop.xp.now.value
scoreboard players set #xp_advancement_multiplier tmp 1
execute if score #overworld_11_xp_multiplier advancement matches 1.. run scoreboard players operation #xp_advancement_multiplier tmp = #overworld_11_xp_multiplier advancement
scoreboard players operation #xp_value tmp *= #xp_advancement_multiplier tmp
return run scoreboard players get #xp_value tmp
