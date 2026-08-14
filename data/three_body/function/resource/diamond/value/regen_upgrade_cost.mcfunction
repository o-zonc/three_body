# Prepare the next diamond regeneration upgrade cost.
scoreboard players reset #diamond_regen_lvl_next tmp
execute store result score #diamond_regen_max tmp run data get storage three_body:resource.config.diamond.regen
execute store result score #diamond_regen_lvl_next tmp run scoreboard players get #diamond_regen_lvl upgrade
scoreboard players add #diamond_regen_lvl_next tmp 1
execute if score #diamond_regen_lvl_next tmp >= #diamond_regen_max tmp run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #diamond_regen_lvl_next tmp
function three_body:resource/diamond/value/regen_data_by_lvl with storage three_body:resource.temp
data modify storage three_body:resource.input set value {type:"diamond",amount:0}
data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
