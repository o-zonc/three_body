# 현재 material_shop_cost_down 상점 업그레이드 비용을 tmp.cost에 저장

data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/crystal_shop/value/now_material_shop_cost_down_data
execute if data storage data tmp.crystal_shop.material_shop_cost_down.now.cost run data modify storage data tmp.cost set from storage data tmp.crystal_shop.material_shop_cost_down.now.cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 if data storage data tmp.cost[{type:"compressed_overworld_crystal"}] run data modify storage data tmp.cost[{type:"compressed_overworld_crystal"}].type set value "spirit"
