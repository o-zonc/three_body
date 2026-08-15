# Unlock 청금석(lapis).
execute if score #lapis unlock matches 1.. run return 0

# Consult the resource config for the unlock cost and pay it via the generic Material API.
data modify storage three_body:resource input set value {type:"lapis"}
execute store success score #resource_unlock_success resource_test run function three_body:resource/internal/unlock with storage three_body:resource.input
execute unless score #resource_unlock_success resource_test matches 1 run tellraw @s {"text":"재료가 부족합니다.","color":"red"}
execute unless score #resource_unlock_success resource_test matches 1 run return fail

# 최초 노드 생성. 생성 함수에서는 쿨타임을 설정하지 않는다.
function three_body:resource/lapis/regen/place

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
