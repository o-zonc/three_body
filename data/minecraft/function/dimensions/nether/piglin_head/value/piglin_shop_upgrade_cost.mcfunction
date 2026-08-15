function dimensions/nether/piglin_head/value/now_piglin_shop_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
execute if data storage data tmp.piglin_head.piglin_shop.now.cost run data modify storage data tmp.cost set from storage data tmp.piglin_head.piglin_shop.now.cost
