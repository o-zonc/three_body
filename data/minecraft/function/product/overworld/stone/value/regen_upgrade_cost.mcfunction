# tmp.cost 경로에 const.product.stone.regen.(현재 레벨).cost 값을 삽입

function product/overworld/stone/value/now_regen_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.regen_data.now.cost
