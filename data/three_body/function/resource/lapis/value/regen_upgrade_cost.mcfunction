# Prepare the next lapis regeneration upgrade cost.
scoreboard players reset #lapis_regen_lvl_next tmp
execute store result score #lapis_regen_max tmp run data get storage three_body:resource.config.lapis.regen
execute store result score #lapis_regen_lvl_next tmp run scoreboard players get #lapis_regen_lvl upgrade
scoreboard players add #lapis_regen_lvl_next tmp 1
execute if score #lapis_regen_lvl_next tmp >= #lapis_regen_max tmp run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #lapis_regen_lvl_next tmp
function three_body:resource/lapis/value/regen_data_by_lvl with storage three_body:resource.temp
data modify storage three_body:resource.input set value {type:"lapis",amount:0}
data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
