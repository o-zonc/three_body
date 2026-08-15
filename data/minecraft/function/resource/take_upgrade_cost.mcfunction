data modify storage data tmp.cost_before_upgrade_take set from storage data tmp.cost
function resource/take_cost
data modify storage data tmp.cost set from storage data tmp.cost_before_upgrade_take
data remove storage data tmp.cost_before_upgrade_take
