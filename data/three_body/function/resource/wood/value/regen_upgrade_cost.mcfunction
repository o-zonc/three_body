# Return the next wood regeneration upgrade cost as a Material API input.
# The cost is defined in resource.config and is zero when max level is reached.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #wood_regen_lvl upgrade
execute if score #wood_regen_lvl upgrade matches 0..4 run scoreboard players add #wood_regen_lvl_next tmp 1
execute if score #wood_regen_lvl upgrade matches 5.. run return 0
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #wood_regen_lvl_next tmp
function three_body:resource/wood/value/regen_data_by_lvl with storage three_body:resource.temp
$data modify storage three_body:resource.input set value {type:"wood",amount:0}
$data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
