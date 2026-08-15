# 현재 drill 속도 업그레이드 비용을 tmp.cost에 저장

function dimensions/overworld/drill/value/now_speed_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.drill_speed_data.now.cost
