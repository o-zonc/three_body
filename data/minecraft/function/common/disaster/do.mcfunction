# 재실행 방어 코드
execute if score #disaster_running run matches 1 run return 0

# --- 멸망 이벤트 시작 ---

# 멸망 연출 동안 시스템 일시정지
execute if score #GLOBAL era_paused matches 1 run scoreboard players set #GLOBAL era_observed 1
scoreboard players set #GLOBAL era_paused 1
scoreboard players set #disaster_running run 1

# user_disaster는 호출 지점에서 설정한다.
# 자연 멸망은 0, 이동기로 직접 실행한 멸망은 1이다.
# 자연 멸망으로 차원이 바뀌면 반출할 수 없는 난세기 종료 물약을 모두 회수한다.
execute if score #GLOBAL user_disaster matches 0 run clear @a minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}]

scoreboard objectives setdisplay sidebar

# 화면 연출
effect give @a blindness 7 1 true
effect give @a darkness 7 1 true

title @a times 20 60 20

# --- 현재 차원의 플레이어를 executor로 지정한 뒤 멸망 이벤트 실행 ---
execute as @a[nbt={Dimension:"minecraft:overworld"},limit=1] at @s run function common/disaster/overworld/random
execute as @a[nbt={Dimension:"minecraft:frozen"},limit=1] at @s run function common/disaster/frozen/random
execute as @a[nbt={Dimension:"minecraft:dried"},limit=1] at @s run function common/disaster/dried/random
execute as @a[nbt={Dimension:"minecraft:polarnight"},limit=1] at @s run function common/disaster/polar
execute as @a[nbt={Dimension:"minecraft:dawn"},limit=1] at @s run function common/disaster/dawn

# 극야를 제외하고는 문명 수 1 증가
execute unless entity @a[nbt={Dimension:"minecraft:polarnight"}] run scoreboard players add #GLOBAL n_civil 1

advancement grant @a only 6_disaster/00_root
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] run advancement grant @a only 6_disaster/10_overworld
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] run advancement grant @a only 6_disaster/20_frozen
execute if entity @a[nbt={Dimension:"minecraft:dried"}] run advancement grant @a only 6_disaster/30_dried

# 멸망 상태는 연출이 완전히 끝날 때까지 유지한다.
# state_* 초기화는 disaster/finish에서 다음 차원으로 이동한 뒤 처리한다.

# --- 멸망 연출 종료 예약 ---
schedule function common/disaster/finish 120t
