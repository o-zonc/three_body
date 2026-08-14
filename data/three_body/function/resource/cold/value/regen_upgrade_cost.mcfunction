# Prepare the next cold regeneration upgrade cost.
scoreboard players reset #cold_regen_lvl_next tmp
execute store result score #cold_regen_max tmp run data get storage three_body:resource.config.cold.regen
execute store result score #cold_regen_lvl_next tmp run scoreboard players get #cold_regen_lvl upgrade
scoreboard players add #cold_regen_lvl_next tmp 1
execute if score #cold_regen_lvl_next tmp >= #cold_regen_max tmp run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #cold_regen_lvl_next tmp
function three_body:resource/cold/value/regen_data_by_lvl with storage three_body:resource.temp
data modify storage three_body:resource.input set value {type:"cold",amount:0}
data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
