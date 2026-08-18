# 플레이어 상태
# shift는 웅크리기 시작 순간에만 1틱 동안 유지되는 edge 신호입니다.
tag @a remove shift
execute as @a if predicate player/sneaking unless score @s sneaking_prev matches 1 run tag @s add shift

# 현재 웅크리기 상태를 다음 tick의 이전 상태로 저장
execute as @a if predicate player/sneaking run scoreboard players set @s sneaking_prev 1
execute as @a unless predicate player/sneaking run scoreboard players set @s sneaking_prev 0

# 엘리베이터
function elevator/tick

# 차원 이동기 API
function mover/tick

# 인터랙션 이벤트
function interaction/detect

# 자원 API
function var_init
function resource/limit_materials

function resource/product_managing_by_tick
function resource/unlock_trigger
function resource/upgrade_trigger
function item/purchase_trigger
function dimensions/overworld/shop/shop_trigger

# 스토리
function story/story

# 차원 이동 시스템
function common/random

# 엘리베이터
function elevator/tick

# 사이드바
function ui/sidebar/update
