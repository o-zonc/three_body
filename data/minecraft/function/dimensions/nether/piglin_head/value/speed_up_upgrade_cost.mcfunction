function dimensions/nether/piglin_head/value/now_speed_up_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
execute if data storage data tmp.piglin_head.speed_up.now.cost run data modify storage data tmp.cost set from storage data tmp.piglin_head.speed_up.now.cost
