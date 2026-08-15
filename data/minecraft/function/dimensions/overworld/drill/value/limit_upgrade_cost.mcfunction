# 현재 drill 한계 업그레이드 비용을 tmp.cost에 저장

function dimensions/overworld/drill/value/now_limit_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.drill_limit_data.now.cost
