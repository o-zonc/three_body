# Unlock wood.
execute if score #wood unlock matches 1.. run return 0

# Wood is the first basic resource: its configured unlock_cost is 0,
# so this always succeeds instantly through the same generic path as
# every other resource.
data modify storage three_body:resource input set value {type:"wood"}
execute store success score #resource_unlock_success resource_test run function three_body:resource/internal/unlock with storage three_body:resource.input
execute unless score #resource_unlock_success resource_test matches 1 run return fail

# 최초 노드 생성. 생성 함수에서는 쿨타임을 설정하지 않는다.
function three_body:resource/wood/regen/place

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
