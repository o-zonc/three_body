# 현재 입자가속기 레벨의 다음 가동/업그레이드 비용을 준비한다.
# 발전과제 할인은 기존 물질 자원에만 적용하며 시간 등 메타 자원은 유지한다.
data remove storage data tmp.cost
execute if score #GLOBAL accelerator_level matches 0 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."0".cost
execute if score #GLOBAL accelerator_level matches 1 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."1".cost
execute if score #GLOBAL accelerator_level matches 2 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."2".cost
execute if score #GLOBAL accelerator_level matches 3 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."3".cost
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount

# 깨진 양자 얽힘 파편도 공용 비용 표기 양식에 포함한다.
# 실제 보유량 확인과 차감은 전용 아이템 로직에서 처리한다.
execute if score #GLOBAL accelerator_level matches 1..3 run data modify storage data tmp.cost append value {type:"broken_cost",amount:0}
execute if score #GLOBAL accelerator_level matches 1 store result storage data tmp.cost[-1].amount int 1 run data get storage data const.accelerator.upgrade."1".broken
execute if score #GLOBAL accelerator_level matches 2 store result storage data tmp.cost[-1].amount int 1 run data get storage data const.accelerator.upgrade."2".broken
execute if score #GLOBAL accelerator_level matches 3 store result storage data tmp.cost[-1].amount int 1 run data get storage data const.accelerator.upgrade."3".broken
execute if data storage data tmp.shop_advancement_cost_original if score #GLOBAL accelerator_level matches 1..3 run data modify storage data tmp.shop_advancement_cost_original append value {type:"broken_cost",amount:0}
execute if data storage data tmp.shop_advancement_cost_original if score #GLOBAL accelerator_level matches 1 store result storage data tmp.shop_advancement_cost_original[-1].amount int 1 run data get storage data const.accelerator.upgrade."1".broken
execute if data storage data tmp.shop_advancement_cost_original if score #GLOBAL accelerator_level matches 2 store result storage data tmp.shop_advancement_cost_original[-1].amount int 1 run data get storage data const.accelerator.upgrade."2".broken
execute if data storage data tmp.shop_advancement_cost_original if score #GLOBAL accelerator_level matches 3 store result storage data tmp.shop_advancement_cost_original[-1].amount int 1 run data get storage data const.accelerator.upgrade."3".broken
execute if data storage data tmp.cost run function resource/convert_discount_cost_to_text_named {id:"accelerator_upgrade",insertion:", "}
