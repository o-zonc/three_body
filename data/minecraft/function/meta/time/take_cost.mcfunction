execute unless score #cost_time cost matches 1.. run return 0
scoreboard players operation #meta_take tmp = #cost_time cost
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_take tmp
function meta/time/clear_item with storage data tmp.meta
function meta/sync
return 1
