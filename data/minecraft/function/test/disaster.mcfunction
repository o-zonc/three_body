# TEST: 멸망 연출

# 현재 플레이어가 있는 차원을 대상으로 멸망을 강제로 시작한다.
# 멸망 테스트에서는 해당 차원의 타이머를 0으로 만들어
# 실제 타이머 만료 직후의 상태를 재현한다.

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #GLOBAL state_overworld 2
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #GLOBAL timer_overworld 0

execute if entity @a[nbt={Dimension:"minecraft:dried"}] run scoreboard players set #GLOBAL state_dried 2
execute if entity @a[nbt={Dimension:"minecraft:dried"}] run scoreboard players set #GLOBAL timer_dried 0

execute if entity @a[nbt={Dimension:"minecraft:frozen"}] run scoreboard players set #GLOBAL state_frozen 2
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] run scoreboard players set #GLOBAL timer_frozen 0

function common/disaster/do

tellraw @a {"text":"[TEST] disaster/do 실행 완료","color":"gold"}
tellraw @a {"text":"[TIP] 현재 차원의 timer = 0 상태에서 멸망 연출을 테스트했습니다.","color":"gray"}
tellraw @a {"text":"멸망 연출 종료 후 next/transition 흐름을 확인하세요.","color":"gray"}
