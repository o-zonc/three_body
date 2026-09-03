# 매크로 인수: id, insertion
# 발전과제 할인 적용 시 할인 전 비용은 취소선, 할인 후 비용은 다음 줄에 표시한다.
# 할인 전 비용이 없으면 기존 비용 포맷터를 그대로 사용한다.

$execute unless data storage data tmp.shop_advancement_cost_original run return run function resource/convert_cost_to_text_named {id:"$(id)",insertion:"$(insertion)"}

# 할인된 현재 비용을 임시 보존한다.
data modify storage data tmp.shop_advancement_cost_discounted set from storage data tmp.cost

# 기존 포맷터가 다른 비용 감소 시스템의 tmp.cost_original을 오해하지 않도록 잠시 비운다.
data remove storage data tmp.cost_original

# 할인 전 비용 포맷
data modify storage data tmp.cost set from storage data tmp.shop_advancement_cost_original
$function resource/convert_cost_to_text_named {id:"$(id)_before_discount",insertion:"$(insertion)"}

# 할인 후 비용 포맷
data modify storage data tmp.cost set from storage data tmp.shop_advancement_cost_discounted
$function resource/convert_cost_to_text_named {id:"$(id)_after_discount",insertion:"$(insertion)"}

# 최종 호버 텍스트: 원래 재료(취소선) -> 새로운 재료량
$data modify storage data tmp.cost_text.$(id).text set value [{storage:"data",nbt:"tmp.cost_text.$(id)_before_discount.text",interpret:true,strikethrough:true},{text:"\n→ ",color:"gray",strikethrough:false},{storage:"data",nbt:"tmp.cost_text.$(id)_after_discount.text",interpret:true,strikethrough:false}]

# tmp.cost는 실제 구매에 사용할 할인 후 비용으로 유지한다.
data remove storage data tmp.shop_advancement_cost_discounted
return 1
