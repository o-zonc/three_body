# ==========================================
# 재실행 방어 코드
# ==========================================
execute if score #disaster_running run matches 1 run return 0

# ==========================================
# 멸망 이벤트 시작
# ==========================================

# 멸망 연출 동안 시스템 일시정지
scoreboard players set #GLOBAL era_paused 1
scoreboard players set #disaster_running run 1

# 플레이어가 직접 멸망을 실행했음을 표시
# bossbar/update에서 user_disaster=1일 때 '지속 포기' 상태로 표시합니다.
scoreboard players set #GLOBAL user_disaster 1

# 멸망 연출 동안 자원 사이드바 숨김
function three_body:resource/sidebar/hide

# 화면 연출
effect give @a blindness 7 1 true
effect give @a darkness 7 1 true

title @a times 20 60 20

# ==========================================
# 현재 차원의 플레이어를 executor로 지정한 뒤 멸망 이벤트 실행
# ==========================================
execute as @a[nbt={Dimension:"minecraft:overworld"},limit=1] at @s run function three_body:common/disaster/overworld/random
execute as @a[nbt={Dimension:"three_body:frozen"},limit=1] at @s run function three_body:common/disaster/frozen/random
execute as @a[nbt={Dimension:"three_body:dried"},limit=1] at @s run function three_body:common/disaster/dried/random
execute as @a[nbt={Dimension:"three_body:polarnight"},limit=1] at @s run function three_body:common/disaster/polar
execute as @a[nbt={Dimension:"three_body:dawn"},limit=1] at @s run function three_body:common/disaster/dawn

# 극야를 제외하고는 문명 수 1 증가
execute unless entity @a[nbt={Dimension:"three_body:polarnight"}] run scoreboard players add #GLOBAL n_civil 1

execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run advancement grant @a only three_body:0_overworld/10_disaster
execute if entity @a[nbt={Dimension:"three_body:frozen"}] run advancement grant @a only three_body:1_frozen/03_disaster
execute if entity @a[nbt={Dimension:"three_body:dried"}] run advancement grant @a only three_body:2_dried/01_disaster
execute if entity @a[nbt={Dimension:"three_body:polarnight"}] run advancement grant @a only three_body:3_polarnight/98_last

# 다른 차원을 한 번도 방문하지 않은 상태에서 오버월드가 멸망하는 경우
# 자동 난세기 멸망(state_overworld=2)뿐 아니라 차원 이동기로 직접 멸망시키는 경우도 포함합니다.
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL first_frozen matches 0 if score #GLOBAL first_dried matches 0 run advancement grant @a only three_body:0_overworld/11_unluck

# 멸망 상태는 연출이 완전히 끝날 때까지 유지합니다.
# state_* 초기화는 disaster/finish에서 다음 차원으로 이동한 뒤 처리합니다.

# ==========================================
# 멸망 연출 종료 예약
# ==========================================
schedule function three_body:common/disaster/finish 120t
