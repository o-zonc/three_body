function resource/nether/blaze/value/drop_data_by_lvl with storage data tmp.drop_data
data remove storage data tmp.drop_data.now
data modify storage data tmp.drop_data.now set from storage data tmp.drop_data.tmp
data remove storage data tmp.drop_data.lvl
data remove storage data tmp.drop_data.tmp
return run data get storage data tmp.drop_data.now.value