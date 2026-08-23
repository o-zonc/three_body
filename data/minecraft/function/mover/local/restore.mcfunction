# 오버월드 복귀 시 전용 이동기를 먼저 회수한 뒤, 해금·구매 기록에 맞춰 재지급한다.
# 제단 이동기: 연금술 공방 해금 여부. 상점·공방 이동기: 각 이동기 구매 여부.
function mover/local/recover
execute as @a if score #alchemy_workshop unlock matches 1.. run function item/give/altar_mover
execute as @a if score #shop_mover unlock matches 1.. run function item/give/shop_mover
execute as @a if score #alchemy_mover unlock matches 1.. run function item/give/alchemy_mover
