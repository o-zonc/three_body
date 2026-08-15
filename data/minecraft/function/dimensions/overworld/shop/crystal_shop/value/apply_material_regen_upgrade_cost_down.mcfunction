# Reduce tmp.cost for material regen upgrades after the base cost is loaded.

execute unless data storage data tmp.cost run return 0
data modify storage data tmp.cost_original set from storage data tmp.cost
execute store result storage data tmp.crystal_shop.material_regen_upgrade_cost_down.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/crystal_shop/value/material_regen_upgrade_cost_down_data_by_lvl with storage data tmp.crystal_shop.material_regen_upgrade_cost_down
data remove storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now
data modify storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now set from storage data tmp.crystal_shop.material_regen_upgrade_cost_down.tmp
data remove storage data tmp.crystal_shop.material_regen_upgrade_cost_down.lvl
data remove storage data tmp.crystal_shop.material_regen_upgrade_cost_down.tmp
execute store result score #material_regen_upgrade_cost_down_percent tmp run data get storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now.value 100
scoreboard players set #cost_down_multiplier tmp 100
scoreboard players operation #cost_down_multiplier tmp -= #material_regen_upgrade_cost_down_percent tmp
scoreboard players set #cost_down_divisor tmp 100

execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_down_amount tmp run data get storage data tmp.cost[{type:"stone"}].amount
execute if data storage data tmp.cost[{type:"stone"}].amount run scoreboard players operation #cost_down_amount tmp *= #cost_down_multiplier tmp
execute if data storage data tmp.cost[{type:"stone"}].amount run scoreboard players operation #cost_down_amount tmp /= #cost_down_divisor tmp
execute if data storage data tmp.cost[{type:"stone"}].amount if score #cost_down_amount tmp matches ..0 run scoreboard players set #cost_down_amount tmp 1
execute if data storage data tmp.cost[{type:"stone"}].amount store result storage data tmp.cost[{type:"stone"}].amount int 1 run scoreboard players get #cost_down_amount tmp