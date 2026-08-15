data modify storage data tmp.cost_before_upgrade_take set from storage data tmp.cost
execute if score #4_2 nether_workshop matches 1 unless score #trial_active trial matches 1 run data remove storage data tmp.cost[{type:"quartz"}]
execute if score #4_2 nether_workshop matches 1 if score #creation_restored trial matches 1 run data remove storage data tmp.cost[{type:"quartz"}]
function resource/take_cost
data modify storage data tmp.cost set from storage data tmp.cost_before_upgrade_take
data remove storage data tmp.cost_before_upgrade_take
