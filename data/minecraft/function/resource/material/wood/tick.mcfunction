# 나무 노드는 직전 tick의 블록 상태와 현재 상태를 비교해 채굴 edge를 감지합니다.
# 생산 비활성화 중에도 상태를 동기화해 재활성화 시 가짜 채굴을 막습니다.
execute if score #disable_wood_production var matches 1 run scoreboard players set #wood_present_prev var 0
execute if score #disable_wood_production var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:oak_log run scoreboard players set #wood_present_prev var 1
execute if score #disable_wood_production var matches 1 run return 0

# oak_log(1) -> air(0) 전환에서만 한 번 수확합니다.
execute if score #wood_present_prev var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air run scoreboard players set #catalyst_active_harvest var 0
execute if score #wood_present_prev var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air unless score #wood_automated_harvest var matches 1 run scoreboard players set #catalyst_active_harvest var 1
execute if score #wood_present_prev var matches 1 in minecraft:overworld if block 0 -59 35 minecraft:air run function resource/material/wood/harvest
execute in minecraft:overworld if block 0 -59 35 minecraft:air run scoreboard players set #catalyst_active_harvest var 0
execute in minecraft:overworld if block 0 -59 35 minecraft:air run scoreboard players set #wood_automated_harvest var 0

# 기존 재생 쿨타임과 배치 동작을 유지합니다.
execute in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches ..0 run function resource/material/wood/place
execute in minecraft:overworld if block 0 -59 35 minecraft:air if score #wood_remain generate matches 1.. run scoreboard players remove #wood_remain generate 1

# place까지 끝난 실제 블록 상태를 다음 tick 기준으로 저장합니다.
scoreboard players set #wood_present_prev var 0
execute in minecraft:overworld if block 0 -59 35 minecraft:oak_log run scoreboard players set #wood_present_prev var 1
