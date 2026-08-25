# 현재 입자가속기 레벨의 다음 가동/업그레이드 비용을 준비한다.
# 발전과제 할인은 기존 물질 자원에만 적용하며 시간 등 메타 자원은 유지한다.
data remove storage data tmp.cost
execute if score #GLOBAL accelerator_level matches 0 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."0".cost
execute if score #GLOBAL accelerator_level matches 1 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."1".cost
execute if score #GLOBAL accelerator_level matches 2 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."2".cost
execute if score #GLOBAL accelerator_level matches 3 run data modify storage data tmp.cost set from storage data const.accelerator.upgrade."3".cost
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
execute if data storage data tmp.cost run function resource/convert_discount_cost_to_text_named {id:"accelerator_upgrade",insertion:", "}
