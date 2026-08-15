# 자원 상점 전용 비용 차감
# 4_2 공방 효과는 석영을 요구량으로만 검사하고 실제 차감하지 않습니다.
# 2_1의 석탄/금 비소모는 공통 resource/take_cost에서 전역 처리합니다.

data modify storage data tmp.cost_before_material_shop_take set from storage data tmp.cost
function resource/take_cost
data modify storage data tmp.cost set from storage data tmp.cost_before_material_shop_take
data remove storage data tmp.cost_before_material_shop_take
