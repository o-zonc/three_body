# Prepare the next information regeneration upgrade cost.
scoreboard players reset #information_regen_lvl_next tmp
execute store result score #information_regen_max tmp run data get storage three_body:resource.config.information.regen
execute store result score #information_regen_lvl_next tmp run scoreboard players get #information_regen_lvl upgrade
scoreboard players add #information_regen_lvl_next tmp 1
execute if score #information_regen_lvl_next tmp >= #information_regen_max tmp run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #information_regen_lvl_next tmp
function three_body:resource/information/value/regen_data_by_lvl with storage three_body:resource.temp
data modify storage three_body:resource.input set value {type:"information",amount:0}
data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
