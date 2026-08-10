# ==========================================
# TEST: 멸망 연출
# ==========================================

# 현재 차원에서 멸망을 강제로 시작합니다.
# 실제 게임과 동일하게 disaster/do가 era_paused를 1로 설정하도록 합니다.

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #GLOBAL state_overworld 2
execute if entity @a[nbt={Dimension:"three_body:dried"}] run scoreboard players set #GLOBAL state_dried 2
execute if entity @a[nbt={Dimension:"three_body:frozen"}] run scoreboard players set #GLOBAL state_frozen 2

function three_body:common/disaster/do

tellraw @a {"text":"[TEST] disaster/do 실행 완료","color":"gold"}
tellraw @a {"text":"[TEST] 멸망 연출 종료 후 next/transition 흐름을 확인하세요.","color":"yellow"}
