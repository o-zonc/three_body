# ============================================================
# THREE BODY - FULL RESET
# ============================================================

# ------------------------------------------------------------
# 1. 예약된 함수 제거
# ------------------------------------------------------------

schedule clear common/next

schedule clear story/intro/00_init
schedule clear story/intro/01_quote1
schedule clear story/intro/02_scroll_start
schedule clear story/intro/03_scroll_tick
schedule clear story/intro/96_end
schedule clear story/intro/99_release_player
schedule clear story/ending/01_answer
schedule clear story/ending/02_epilogue
schedule clear story/ending/03_credits
schedule clear story/ending/04_credit_scroll
schedule clear story/ending/05_return
schedule clear crying/dawn_reset_finish
execute if score #dawn_reset_forceload_owned var matches 1 in minecraft:dawn run forceload remove 0 0
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


# ------------------------------------------------------------
# 2. 플레이어 상태 초기화
# ------------------------------------------------------------

effect clear @a
clear @a
tag @a remove ending_seen
tag @a remove ending_active
tag @a remove ending_from_overworld
tag @a remove ending_from_dried
tag @a remove ending_from_frozen
tag @a remove ending_from_polarnight
tag @a remove ending_from_dawn

gamemode adventure @a

gamerule advance_time true

# ------------------------------------------------------------
# 2.5. 전체 초기화 대상 청크 임시 로드
# ------------------------------------------------------------
# restart는 스코어뿐 아니라 각 차원의 실제 블록/구조물도 되돌립니다.
# 플레이어를 오버월드로 이동한 뒤 다른 차원의 청크가 언로드되면
# setblock/fill/structure block 갱신이 실패할 수 있으므로 초기화 동안만 강제로 로드합니다.
execute in overworld run forceload add -64 -64 64 64
execute in dried run forceload add -64 -64 64 64
execute in frozen run forceload add -64 -64 64 64
execute in polarnight run forceload add -64 -64 64 64
execute in dawn run forceload add -64 -64 64 64

# 취소된 개별 구조물 작업의 소유 상태는 위 광역 로드가 대신하므로 초기화합니다.
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

# ------------------------------------------------------------
# 3. 플레이어를 오버월드로 복귀
# ------------------------------------------------------------

execute in overworld run tp @a 0 100 0

# ------------------------------------------------------------
# 4. 스코어보드 및 월드 상태 초기화
# ------------------------------------------------------------

# 오프라인 플레이어를 포함해 다음 접속 시 trigger 초기화가 다시 수행되도록 합니다.
scoreboard players reset * trigger_init

function reset_state
# 전체 재시작 직후 기본 미로는 오리지널 유형(4)으로 시작합니다.
scoreboard players set #maze_type var 4
# tick에서 더 이상 전체 var_init을 호출하지 않으므로,
# reset으로 제거된 factory timer/status 등 누락 점수는 여기서 한 번 복구합니다.
function var_init/load
# 현재 접속 중인 플레이어는 restart 과정에서 즉시 trigger 상태를 복구합니다.
execute as @a run function var_init/player

scoreboard objectives add material_display dummy
scoreboard objectives modify material_display displayname {"text":"발전 현황","color":"gold"}
scoreboard objectives modify material_display numberformat blank
function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display


# ------------------------------------------------------------
# 5. 시간 배율 복구
# ------------------------------------------------------------

execute in overworld run time rate 1
execute in dried run time rate 1
execute in frozen run time rate 1
execute in polarnight run time rate 1
execute in dawn run time rate 1


# ------------------------------------------------------------
# 6. 날씨 초기화
# ------------------------------------------------------------

execute in overworld run weather clear
execute in dried run weather clear
execute in frozen run weather clear
execute in polarnight run weather clear
execute in dawn run weather clear


# ------------------------------------------------------------
# 7. 기존 인트로/게임용 엔티티 제거
# ------------------------------------------------------------

kill @e[type=marker,tag=next_dim_selector]

kill @e[type=marker,tag=current]

kill @e[tag=story_intro]
kill @e[tag=story_ending]

kill @e[tag=fall_anchor]

kill @e[type=item_display,tag=story_intro]

kill @e[type=text_display,tag=story_intro]


# ------------------------------------------------------------
# 8. 도전과제 회수 및 레벨 초기화
# ------------------------------------------------------------

advancement revoke @a everything

xp set @a 0 levels
xp set @a 0 points

function resource/advancement_reward/wood/disable
function resource/advancement_reward/stone/disable
function resource/advancement_reward/coal/disable
function resource/advancement_reward/copper/disable
function resource/advancement_reward/iron/disable

attribute @s movement_speed base set 0.1

# ------------------------------------------------------------
# 9. 시설물 철거
# ------------------------------------------------------------

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

# ------------------------------------------------------------
# 9.5. 임시 청크 로드 해제
# ------------------------------------------------------------
schedule function structure/restart_overworld_release 4t replace
# 메마른 구조물 OFF 예약(2틱)이 적용된 뒤 광역 강제 로드를 해제합니다.
schedule function structure/restart_dried_release 4t replace
schedule function structure/restart_frozen_release 4t replace
schedule function structure/restart_polar_release 4t replace
execute in dawn run forceload remove -64 -64 64 64

# 여명 spear와 우는 흑요석 디스플레이도 중앙 청크 로드 후 다시 초기화합니다.
function crying/dawn_reset_schedule

# ------------------------------------------------------------
# 10. 게임 규칙 재설정
# ------------------------------------------------------------

gamerule send_command_feedback false
gamerule max_snow_accumulation_height 0

attribute @s block_interaction_range base set 10
attribute @s block_interaction_range base set 10
attribute @s entity_interaction_range base set 10

# ------------------------------------------------------------
# 99. 인트로 시작
# ------------------------------------------------------------

function story/intro/00_init
