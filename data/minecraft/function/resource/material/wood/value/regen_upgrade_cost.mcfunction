# tmp.cost 경로에 const.resource.wood.regen.(현재 레벨).cost 값을 삽입

function resource/material/wood/value/now_regen_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.regen_data.now.cost
