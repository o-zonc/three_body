# Prepare the next iron regeneration upgrade cost.
scoreboard players reset #iron_regen_lvl_next tmp
execute store result score #iron_regen_max tmp run data get storage three_body:resource.config.iron.regen
execute store result score #iron_regen_lvl_next tmp run scoreboard players get #iron_regen_lvl upgrade
scoreboard players add #iron_regen_lvl_next tmp 1
execute if score #iron_regen_lvl_next tmp >= #iron_regen_max tmp run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #iron_regen_lvl_next tmp
function three_body:resource/iron/value/regen_data_by_lvl with storage three_body:resource.temp
data modify storage three_body:resource.input set value {type:"iron",amount:0}
data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
