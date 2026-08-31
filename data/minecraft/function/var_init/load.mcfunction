# 데이터팩 load/reload 및 전체 restart 직후에만 실행합니다.
# 기존 var_init은 objective 생성, 누락값 복구, 기존 월드 마이그레이션과 범위 보정을 담당합니다.
function var_init

# 기존 세이브 및 /reload 시 강화 단계와 얼어붙은 차원의 블록 상태를 보정합니다.
execute if score #special_second_lvl upgrade matches 2.. run function crying/frozen_reveal

# 기존 세이브에 없는 타임머신 연구 점수는 load 시 한 번만 보정합니다.
function time_machine/init_scores

# 기존 세이브의 현재 분기 advancement를 과거 완료 기록으로 이관합니다.
execute if entity @a[advancements={0_overworld/25_yellow_time_machine=true}] run scoreboard players set #time_machine_ever_yellow var 1
execute if entity @a[advancements={0_overworld/25_blue_time_machine=true}] run scoreboard players set #time_machine_ever_blue var 1
execute if entity @a[advancements={0_overworld/25_green_time_machine=true}] run scoreboard players set #time_machine_ever_green var 1

# 기존 세이브가 이미 whitelist를 모두 충족한 경우 reload 시 한 번 보정합니다.
execute as @a[tag=player] run function advancement/general/check

# 기존 플레이어도 최적화된 이벤트형 story trigger를 즉시 사용할 수 있게 한 번 활성화합니다.
scoreboard players enable @a intro_skip
scoreboard players enable @a tutorial

# 자동 세공의 누락값 보정도 매 tick이 아니라 load에서 처리합니다.
execute unless score #jewel_auto_enabled var = #jewel_auto_enabled var run scoreboard players set #jewel_auto_enabled var 0
execute unless score #jewel_auto_timer var = #jewel_auto_timer var run scoreboard players set #jewel_auto_timer var 0

# 다음 tick에 현재 차원 기준 환경 타이머를 한 번 다시 계산하도록 합니다.
scoreboard players reset #environment_dim_prev var
