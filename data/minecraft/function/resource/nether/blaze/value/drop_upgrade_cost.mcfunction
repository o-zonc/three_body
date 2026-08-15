# tmp.cost 경로에 const.resource.blaze.drop.(현재 레벨).cost 값을 삽입

function resource/nether/blaze/value/now_drop_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.drop_data.now.cost
