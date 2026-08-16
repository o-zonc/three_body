function resource/overworld/mob/value/regen_data_by_lvl with storage data tmp.regen_data
data remove storage data tmp.regen_data.now
data modify storage data tmp.regen_data.now set from storage data tmp.regen_data.tmp
data remove storage data tmp.regen_data.lvl
data remove storage data tmp.regen_data.tmp
return run data get storage data tmp.regen_data.now.value