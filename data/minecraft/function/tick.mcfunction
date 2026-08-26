# 플레이어 상태
# shift는 웅크리기 시작 순간에만 1틱 동안 유지되는 edge 신호입니다.
tag @a remove shift
execute as @a if predicate player/sneaking unless score @s sneaking_prev matches 1 run tag @s add shift

# 현재 웅크리기 상태를 다음 tick의 이전 상태로 저장
execute as @a if predicate player/sneaking run scoreboard players set @s sneaking_prev 1
execute as @a unless predicate player/sneaking run scoreboard players set @s sneaking_prev 0

# 엘리베이터
function elevator/tick
function elevator/second_perimeter_tick

# 차원 이동기 API
function mover/tick

# 인터랙션 이벤트
function interaction/detect

# 자원 API
function var_init/runtime
# 메타 원장 동기화는 5틱마다, 레거시 자원 상한 안전망은 20틱마다 실행합니다.
function meta/tick
function resource/limit_tick

# 자원 채취 도구
function tool/tick

function resource/product_managing_by_tick
function factory/tick

# 얼어붙은 세계 난세기 환경 효과
function frozen/chaos/tick

# 메마른 세계 난세기 환경 효과
function dried/chaos/tick

# trigger 핸들러는 실제 입력이 들어온 플레이어에게만 실행합니다.
execute as @a[tag=player,scores={unlock_trigger=1..}] run function resource/unlock_trigger
execute as @a[tag=player,scores={upgrade_trigger=1..}] run function resource/upgrade_trigger
execute as @a[tag=player,scores={item_trigger=1..}] run function item/purchase_trigger
execute as @a[tag=player,scores={shop_trigger=1..}] run function dimensions/overworld/shop/shop_trigger
execute as @a[tag=player,scores={factory_trigger=1..}] run function factory/trigger

function accelerator/tick
execute as @a[scores={accelerator_trigger=1..}] run function accelerator/trigger
function time_machine/tick
execute as @a[scores={time_machine_trigger=1..}] run function time_machine/trigger
function shop/alchemy/jewel/tick
function dried/relic/tick
function dried/advancement/tick

# 스토리
function story/story
execute if score #overworld civilization_age matches 6 run function story/overworld/age/check_modern_age
execute if score #overworld civilization_age matches 7 run function story/overworld/age/check_contemporary_age

# 차원 이동 시스템
function common/random

# 사이드바
function ui/sidebar/update

# 보스바
function ui/bossbar/update
