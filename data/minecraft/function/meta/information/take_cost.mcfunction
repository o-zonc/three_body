execute unless score #cost_information cost matches 1.. run return 0
scoreboard players operation #meta_take tmp = #cost_information cost
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_take tmp
function meta/information/clear_item with storage data tmp.meta
function meta/sync
return 1
