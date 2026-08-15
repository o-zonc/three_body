# 현재 material_regen_upgrade_cost_down 상점 업그레이드 비용을 tmp.cost에 저장

data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/crystal_shop/value/now_material_regen_upgrade_cost_down_data
execute if data storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now.cost run data modify storage data tmp.cost set from storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now.cost