# 현재 obsidian_max_up 상점 업그레이드 데이터를 tmp.crystal_shop.obsidian_max_up.now에 저장

execute unless score #obsidian_max_up_lvl crystal_shop = #obsidian_max_up_lvl crystal_shop run scoreboard players set #obsidian_max_up_lvl crystal_shop 0

function trial/possibility/effective_level/obsidian_max
execute store result storage data tmp.crystal_shop.obsidian_max_up.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_data_by_lvl with storage data tmp.crystal_shop.obsidian_max_up
data remove storage data tmp.crystal_shop.obsidian_max_up.now
data modify storage data tmp.crystal_shop.obsidian_max_up.now set from storage data tmp.crystal_shop.obsidian_max_up.tmp
data remove storage data tmp.crystal_shop.obsidian_max_up.lvl
data remove storage data tmp.crystal_shop.obsidian_max_up.tmp
