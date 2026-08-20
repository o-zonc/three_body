execute unless score #cost_time cost matches 1.. run return 0
execute if score #time_bank meta >= #cost_time cost run return run function meta/time/take_from_bank
scoreboard players operation #meta_take tmp = #cost_time cost
scoreboard players operation #meta_take tmp -= #time_bank meta
scoreboard players set #time_bank meta 0
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_take tmp
function meta/time/clear_item with storage data tmp.meta
function meta/sync
return 1
