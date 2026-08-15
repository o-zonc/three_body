# 현재 dig_speed_up 상점 업그레이드 비용을 tmp.cost에 저장

data remove storage data tmp.cost
data remove storage data tmp.cost_original
function dimensions/overworld/shop/crystal_shop/value/now_dig_speed_up_data
execute if data storage data tmp.crystal_shop.dig_speed_up.now.cost run data modify storage data tmp.cost set from storage data tmp.crystal_shop.dig_speed_up.now.cost