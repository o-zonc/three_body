# 오버월드 복귀 시 오버월드 전용 이동기를 구매 기록에 맞춰 재지급한다.
# 중복 지급을 막기 위해 기존 이동기를 먼저 회수한다.
function mover/local/recover
execute as @a[tag=player,nbt={Dimension:"minecraft:overworld"}] run function item/give/altar_mover
execute if score #shop_mover unlock matches 1.. as @a[tag=player,nbt={Dimension:"minecraft:overworld"}] run function item/give/shop_mover
execute if score #alchemy_mover unlock matches 1.. as @a[tag=player,nbt={Dimension:"minecraft:overworld"}] run function item/give/alchemy_mover
