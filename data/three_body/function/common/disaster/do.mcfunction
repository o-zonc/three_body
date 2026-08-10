# ==========================================
# 멸망 이벤트 시작
# ==========================================

# 멸망 연출 동안 시스템 일시정지
scoreboard players set #GLOBAL era_paused 1

# 화면 연출
effect give @a blindness 6 1 true
effect give @a darkness 6 1 true

title @a times 20 60 20

# ==========================================
# 현재 차원에 맞는 멸망 이벤트
# ==========================================
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run function three_body:common/disaster/overworld/random
execute if entity @a[nbt={Dimension:"three_body:frozen"}] run function three_body:common/disaster/frozen/random
execute if entity @a[nbt={Dimension:"three_body:dried"}] run function three_body:common/disaster/dried/random
execute if entity @a[nbt={Dimension:"three_body:polarnight"}] run function three_body:common/disaster/polar
execute if entity @a[nbt={Dimension:"three_body:dawn"}] run function three_body:common/disaster/dawn

# 극야를 제외하고는 문명 수 1 증가
execute unless entity @a[nbt={Dimension:"three_body:polarnight"}] run scoreboard players add #GLOBAL n_civil 1

execute if entity @a[nbt={Dimension:"minecraft:overworld"}, advancements={three_body:0_overworld/10_disaster=false}] run advancement grant @a only three_body:0_overworld/10_disaster
execute if entity @a[nbt={Dimension:"three_body:frozen"}, advancements={three_body:1_frozen/03_disaster=false}] run advancement grant @a only three_body:1_frozen/03_disaster
execute if entity @a[nbt={Dimension:"three_body:dried"}, advancements={three_body:2_dried/01_disaster=false}] run advancement grant @a only three_body:2_dried/01_disaster
execute if entity @a[nbt={Dimension:"three_body:polarnight"}, advancements={three_body:3_polarnight/98_last=false}] run advancement grant @a only three_body:3_polarnight/98_last

# 다른 차원을 한 번도 방문하지 않은 상태에서 오버월드가 멸망하는 경우
execute if score #GLOBAL first_frozen matches 0 if score #GLOBAL first_dried matches 0 if score #GLOBAL state_overworld matches 2 run advancement grant @a only three_body:0_overworld/11_unluck

# ==========================================
# 현재 차원의 멸망 상태 초기화
# ==========================================
# 멸망 이벤트가 반복 실행되지 않도록, 해당 차원의 상태를 '항성기'(0)로 초기화합니다.
execute if score #GLOBAL state_overworld matches 2 if entity @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set #GLOBAL state_overworld 0
execute if score #GLOBAL state_dried matches 2 if entity @a[nbt={Dimension:"three_body:dried"}] run scoreboard players set #GLOBAL state_dried 0
execute if score #GLOBAL state_frozen matches 2 if entity @a[nbt={Dimension:"three_body:frozen"}] run scoreboard players set #GLOBAL state_frozen 0

# ==========================================
# 멸망 연출 종료 예약
# ==========================================
schedule function three_body:common/disaster/finish 120t