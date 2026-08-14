# Unlock wood.
execute if score #wood unlock matches 1.. run return 0

# Wood is the first basic resource and has no unlock cost.
scoreboard players set #wood unlock 1
scoreboard players set #wood_regen_lvl upgrade 0

# 최초 노드 생성. 생성 함수에서는 쿨타임을 설정하지 않는다.
function three_body:resource/wood/regen/place

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
