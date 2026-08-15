# 현재 wood 상점 업그레이드 비용을 tmp.cost에 저장

data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/material_shop/value/now_wood_data
execute if data storage data tmp.material_shop.wood.now.cost run data modify storage data tmp.cost set from storage data tmp.material_shop.wood.now.cost
