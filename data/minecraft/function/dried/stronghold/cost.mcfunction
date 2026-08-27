# Macro arg: id
$execute if score #stronghold_$(id) upgrade matches 1.. run data modify storage data tmp.cost set value []
$execute if score #stronghold_$(id) upgrade matches 0 if score #stronghold_cost_mode tmp matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:500},{type:"emerald",amount:250}]
$execute if score #stronghold_$(id) upgrade matches 0 if score #stronghold_cost_mode tmp matches 2 run data modify storage data tmp.cost set value [{type:"diamond",amount:100},{type:"cold",amount:150}]
$execute if score #stronghold_$(id) upgrade matches 0 if score #stronghold_cost_mode tmp matches 3 run data modify storage data tmp.cost set value [{type:"gold",amount:300},{type:"heat",amount:600}]
