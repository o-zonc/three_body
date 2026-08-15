execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 if score #creation_fast_wood_regen trial matches 1 run return 1
function trial/possibility/effective_level/wood_regen
execute store result storage data tmp.regen_data.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function product/overworld/wood/value/regen_data_by_lvl with storage data tmp.regen_data
data remove storage data tmp.regen_data.now
data modify storage data tmp.regen_data.now set from storage data tmp.regen_data.tmp
data remove storage data tmp.regen_data.lvl
data remove storage data tmp.regen_data.tmp
return run data get storage data tmp.regen_data.now.value