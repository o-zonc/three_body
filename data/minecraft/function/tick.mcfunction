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
function var_init
# 정보/시간의 실제 원장은 전용 아이템 + meta 보관소다.
# material 점수는 현재 원장의 합계를 표시하는 파생값으로만 사용한다.
execute as @a[tag=player,limit=1] run function meta/sync
execute as @a[tag=player,limit=1] run function meta/auto_withdraw
function resource/limit_materials

# 자원 채취 도구
function tool/tick

function resource/product_managing_by_tick
function factory/tick
function resource/unlock_trigger
function resource/upgrade_trigger
function item/purchase_trigger
function dimensions/overworld/shop/shop_trigger
function factory/trigger
function accelerator/tick
function accelerator/trigger
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