# 프로젝트 전체 상태 초기화

# --- 1. 예약된 함수 제거 ---

schedule clear common/next
schedule clear common/disaster/finish
schedule clear mover/unauthorized/warn_tick
schedule clear mover/unauthorized/do_disaster
schedule clear resource/color/event/meteor_finish

schedule clear story/intro/00_init
schedule clear story/intro/01_quote1
schedule clear story/intro/02_scroll_start
schedule clear story/intro/03_scroll_tick
schedule clear story/intro/96_end
schedule clear story/intro/97_world_truth
schedule clear story/intro/98_warning
schedule clear story/intro/99_release_player
schedule clear story/tutorial/01_tutorial
schedule clear story/tutorial/02_tutorial
schedule clear story/tutorial/03_tutorial
schedule clear story/tutorial/04_tutorial
schedule clear story/ending/01_answer
schedule clear story/ending/02_epilogue
schedule clear story/ending/03_credits
schedule clear story/ending/04_credit_scroll
schedule clear story/ending/05_return
schedule clear story/ending/finish
schedule clear story/ending/first_finish
schedule clear crying/dawn_reset_finish
schedule clear frozen/maze/clone
schedule clear frozen/maze/shake
schedule clear frozen/maze/sfx/middle
schedule clear frozen/maze/sfx/finish
schedule clear reckoning/finish_dried_cleanup
schedule clear reckoning/vault/restore_nodes_apply
schedule clear reckoning/vault/restore_nodes_release
scoreboard players set #dawn_reset_forceload_owned var 0
scoreboard players set #dawn_reset_pending var 0
schedule clear structure/dried_sulfur_apply
schedule clear structure/dried_sulfur_release
schedule clear structure/dried_cinnabar_apply
schedule clear structure/dried_cinnabar_release
schedule clear structure/restart_dried_release
schedule clear structure/reckoning_dried_release
schedule clear structure/alchemy_apply
schedule clear structure/alchemy_release
schedule clear structure/beacon_apply
schedule clear structure/beacon_release
schedule clear structure/factory_apply
schedule clear structure/factory_release
schedule clear structure/observatory_apply
schedule clear structure/observatory_release
schedule clear structure/frozen_bridge_apply
schedule clear structure/frozen_bridge_release
schedule clear structure/frozen_maze_apply
schedule clear structure/frozen_maze_release
schedule clear structure/frozen_shop_apply
schedule clear structure/frozen_shop_release
schedule clear structure/polar_vault_apply
schedule clear structure/polar_vault_release
schedule clear structure/restart_overworld_release
schedule clear structure/restart_frozen_release
schedule clear structure/restart_polar_release


# --- 2. 플레이어 상태 초기화 ---

effect clear @a
clear @a

# 인트로가 player 태그를 다시 부여하기 전까지 일반 게임 tick에서 제외한다.
tag @a remove player
tag @a remove intro_seen
tag @a remove overworld_escape_given
tag @a remove maze
tag @a remove accelerator_experiment_running
tag @a remove dried_chaos_potion_pending
tag @a remove dried_chaos_protected
tag @a remove frozen_chaos_potion_pending
tag @a remove frozen_chaos_protected
tag @a remove frozen_chaos_tracking
tag @a remove frozen_chaos_exposed
tag @a remove frozen_chaos_fully_frozen_notified
tag @a remove elevator_floor_1
tag @a remove elevator_floor_2
tag @a remove elevator_floor_3
tag @a remove elevator_2_floor_1
tag @a remove elevator_2_floor_2
tag @a remove elevator_2_floor_3
tag @a remove elevator_2_x_positive
tag @a remove elevator_2_x_negative
tag @a remove elevator_2_z_positive
tag @a remove elevator_2_z_negative
tag @a remove frozen_elevator_floor_1
tag @a remove frozen_elevator_floor_2
tag @a remove frozen_elevator_floor_3
tag @a remove frozen_elevator_deep_lower
tag @a remove frozen_elevator_deep_upper
tag @a remove catalyst_effect_active
tag @a remove alchemy_main_potion
tag @a remove resource_node_miner
tag @a remove unavailable_feedback_played
tag @a remove shift
tag @a remove ending_seen
tag @a remove ending_active
tag @a remove ending_from_overworld
tag @a remove ending_from_dried
tag @a remove ending_from_frozen
tag @a remove ending_from_polarnight
tag @a remove ending_from_dawn

gamemode adventure @a

gamerule advance_time true

# --- 2.5. 고정 시스템 청크 확인 ---
# restart를 직접 호출해도 기반 설정이 유지되도록 멱등적으로 재등록한다.
function system_chunks/load

# 취소된 개별 구조물 작업의 소유 상태는 위 광역 로드가 대신하므로 초기화한다.
scoreboard players set #alchemy_forceload_owned var 0
scoreboard players set #beacon_forceload_owned var 0
scoreboard players set #factory_forceload_owned var 0
scoreboard players set #observatory_forceload_owned var 0
scoreboard players set #dried_sulfur_forceload_owned var 0
scoreboard players set #dried_cinnabar_forceload_owned var 0
scoreboard players set #frozen_bridge_forceload_owned var 0
scoreboard players set #frozen_maze_forceload_owned var 0
scoreboard players set #frozen_shop_forceload_owned var 0
scoreboard players set #polar_vault_forceload_owned var 0

# 초기화 대상 청크가 모두 로드된 뒤, 아직 검사되지 않은 진행 아이템도
# 기존 보호 드롭 분류기를 거쳐 같은 tick에 제거한다.
function mover/protect_drops
kill @e[type=minecraft:item,tag=protected_drop]

# --- 3. 플레이어를 오버월드로 복귀 ---

execute in overworld run tp @a 0 100 0

# --- 4. 스코어보드 및 월드 상태 초기화 ---

# 오프라인 플레이어를 포함해 다음 접속 시 trigger 초기화가 다시 수행되도록 한다.
scoreboard players reset * trigger_init

# var_init/load의 구형 발전과제 마이그레이션이 이전 회차를 되살리지 않게 먼저 회수한다.
advancement revoke @a everything
function reset_state
# 전체 재시작 직후 기본 미로는 오리지널 유형(4)으로 시작한다.
scoreboard players set #maze_type var 4
# tick에서 더 이상 전체 var_init을 호출하지 않으므로,
# reset으로 제거된 factory timer/status 등 누락 점수는 여기서 한 번 복구한다.
function var_init/load
# 현재 접속 중인 플레이어는 restart 과정에서 즉시 trigger 상태를 복구한다.
execute as @a run function var_init/player

scoreboard objectives add material_display dummy
scoreboard objectives modify material_display displayname {"text":"발전 현황","color":"gold"}
scoreboard objectives modify material_display numberformat blank
function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display


# --- 5. 시간 배율 복구 ---

execute in overworld run time rate 1
execute in dried run time rate 1
execute in frozen run time rate 1
execute in polarnight run time rate 1
execute in dawn run time rate 1


# --- 6. 날씨 초기화 ---

execute in overworld run weather clear
execute in dried run weather clear
execute in frozen run weather clear
execute in polarnight run weather clear
execute in dawn run weather clear


# --- 7. 기존 인트로/게임용 엔티티 제거 ---

kill @e[type=marker,tag=next_dim_selector]

kill @e[type=marker,tag=current]

kill @e[tag=story_intro]
kill @e[tag=story_ending]

kill @e[tag=fall_anchor]

kill @e[type=item_display,tag=story_intro]

kill @e[type=text_display,tag=story_intro]


# --- 8. 도전과제 회수 및 레벨 초기화 ---

xp set @a 0 levels
xp set @a 0 points

function resource/advancement_reward/wood/disable
function resource/advancement_reward/stone/disable
function resource/advancement_reward/coal/disable
function resource/advancement_reward/copper/disable
function resource/advancement_reward/iron/disable

attribute @s movement_speed base set 0.1

# --- 9. 시설물 철거 ---

function common/structure/observatory/off
function common/structure/beacon/off
function common/structure/alchemy_workshop/off
function common/structure/factory/off

function frozen/structure/bridge/off
function frozen/structure/maze/off
function frozen/structure/shop/off

# reset_state 내부에서 함께 처리되는 실제 월드 상태:
# - 극야 금고
# - 메마른/얼어붙은 우는 흑요석 접근 블록
# - 여명 색유리/우는 흑요석 디스플레이

# --- 9.5. 상시 로드 유지 ---
# 시스템 청크는 진행 상태와 무관한 기반이므로 restart에서도 해제하지 않는다.

# 여명 spear와 우는 흑요석 디스플레이도 중앙 청크 로드 후 다시 초기화한다.
function crying/dawn_reset_schedule

# --- 10. 게임 규칙 재설정 ---

gamerule send_command_feedback false
gamerule max_snow_accumulation_height 0

attribute @s block_interaction_range base set 10
attribute @s entity_interaction_range base set 10

# --- 99. 인트로 시작 ---

function story/intro/00_init
