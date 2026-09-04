effect clear @a blindness
effect clear @a darkness
execute unless entity @a[tag=accelerator_experiment_running] run title @a clear

# 멸망한 기본 차원의 상태를 공용 finish와 같은 규칙으로 정리한다.
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 2 run scoreboard players set #GLOBAL state_overworld 0
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 2 run scoreboard players set #GLOBAL state_dried 0
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 2 run scoreboard players set #GLOBAL state_frozen 0

# 기존 극야 진입과 공통 문명 정산 핵심 흐름을 그대로 사용한다.
function polarnight/move
scoreboard players set #disaster_running run 0
execute as @a[tag=player,limit=1] run function reckoning/run

# reset_progress가 모든 일반 unlock을 지운 뒤에 영구 해금과 노드를 확정한다.
function resource/color/unlock
scoreboard players set #color_event_pending var 0
scoreboard players set #color_event_meteor var 0
function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display
tellraw @a [{text:"오버월드의 어딘가를 둘러보는 것이 좋을 것 같습니다.",color:"gray",italic:true}]

# 운석 전용 정산도 일반 멸망과 동일한 최종 안전 검사를 통과한다.
function common/disaster/post_finish
