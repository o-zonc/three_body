execute unless score #cost_information cost matches 1.. run return 0
execute if score #information_bank meta >= #cost_information cost run return run function meta/information/take_from_bank
scoreboard players operation #meta_take tmp = #cost_information cost
scoreboard players operation #meta_take tmp -= #information_bank meta
scoreboard players set #information_bank meta 0
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_take tmp
function meta/information/clear_item with storage data tmp.meta
function meta/sync
return 1
