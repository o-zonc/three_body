# Prepare the next wood regeneration upgrade cost in Material API storage.
# The config list is the source of truth for the maximum level.
scoreboard players reset #wood_regen_lvl_next tmp
scoreboard players reset #wood_regen_count tmp

execute store result score #wood_regen_lvl_next tmp run scoreboard players get #wood_regen_lvl upgrade
scoreboard players add #wood_regen_lvl_next tmp 1

# Read the number of configured regeneration levels.
execute store result score #wood_regen_count tmp run data get storage three_body:resource.config.wood.regen

# No next entry means the current level is the maximum level.
execute if score #wood_regen_lvl_next tmp >= #wood_regen_count tmp run return fail

execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #wood_regen_lvl_next tmp
function three_body:resource/wood/value/regen_data_by_lvl with storage three_body:resource.temp

$data modify storage three_body:resource.input set value {type:"wood",amount:0}
$data modify storage three_body:resource.input.amount set from storage three_body:resource.temp.regen.cost
