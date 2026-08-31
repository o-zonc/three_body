# 플레이어 상태
# shift는 웅크리기 시작 순간에만 1틱 동안 유지되는 edge 신호입니다.
tag @a remove shift
tag @a remove unavailable_feedback_played
execute as @a if predicate player/sneaking unless score @s sneaking_prev matches 1 run tag @s add shift

# 현재 웅크리기 상태를 다음 tick의 이전 상태로 저장
execute as @a if predicate player/sneaking run scoreboard players set @s sneaking_prev 1
execute as @a unless predicate player/sneaking run scoreboard players set @s sneaking_prev 0

# 차원 이동기 API
# 엘리베이터가 플레이어를 옮기기 전에 승강장 내부 사용 제한을 먼저 판정합니다.
function mover/tick

# 엘리베이터
execute in minecraft:frozen run function frozen/maze/tick
function elevator/tick
function elevator/second_perimeter_tick

# 인터랙션 이벤트
function interaction/detect
function crying/discovery_tick

# 자원 API
function var_init/runtime
# 메타 원장 동기화는 5틱마다, 레거시 자원 상한 안전망은 20틱마다 실행합니다.
function meta/tick
function resource/limit_tick

# 자원 채취 도구
function tool/tick

# 청동기 일회성 보상 아이템
function heavenly_grace/tick

# 현대 일회성 보상 아이템
function investment_series_a/tick

function resource/product_managing_by_tick
function factory/tick

# 얼어붙은 세계 난세기 환경 효과
function frozen/chaos/tick

# 메마른 세계 난세기 환경 효과
function dried/chaos/tick

# trigger 핸들러는 실제 입력이 들어온 플레이어에게만 실행합니다.
# 기존 플레이어의 trigger_init 값이 남아 있어도 업그레이드 버튼을 항상 사용할 수 있도록 활성 상태를 복구합니다.
scoreboard players enable @a[tag=player] upgrade_trigger
execute as @a[tag=player,scores={unlock_trigger=1..}] run function resource/unlock_trigger
execute as @a[tag=player,scores={upgrade_trigger=1..}] run function resource/upgrade_trigger
execute as @a[tag=player,scores={item_trigger=1..}] run function item/purchase_trigger
execute as @a[tag=player,scores={shop_trigger=1..}] run function dimensions/overworld/shop/shop_trigger
execute as @a[tag=player,scores={factory_trigger=1..}] run function factory/trigger
execute as @a[scores={dimension_trigger=1..}] run function mover/dimension_2

function accelerator/tick
execute as @a[scores={accelerator_trigger=1..}] run function accelerator/trigger
function time_machine/tick
execute as @a[scores={time_machine_trigger=1..}] run function time_machine/trigger
function shop/alchemy/jewel/tick
function shop/alchemy/transmutation/tick
function shop/alchemy/potion/tick
function dried/relic/tick
function dried/advancement/tick

# 스토리
function story/story
function second/tick
execute if score #overworld civilization_age matches 6 run function story/overworld/age/check_modern_age
execute if score #overworld civilization_age matches 7 run function story/overworld/age/check_contemporary_age

# 차원 이동 시스템
function common/random

# 사이드바
function ui/sidebar/update

# 보스바
function ui/bossbar/update
