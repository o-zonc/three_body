# tick

function var_init
function trial/ticking
function trial/exit_item/ticking
function product/limit_materials
function dimensions/nether/obsidian_storage/apply
function dimensions/nether/obsidian_storage/ticking
function compressor/nether/update_quartz_max
function dimensions/overworld/shop/crystal_shop/apply
function interaction/detect
function camera/pin_check
execute unless score #dev var matches 1 run function general/remove_item

# 쉬프트 상태 감지
execute as @a[tag=player] if predicate shift run tag @s add shift
execute as @a[tag=player] unless predicate shift run tag @s remove shift



# 보스바 표시
function product/bossbar/show

# 발전 과제
function advancement/detect
function advancement/apply
function advancement/reward_apply

# 트리거 처리
function scene/trigger
function trial/trigger
function product/upgrade_trigger
function dimensions/overworld/shop/shop_trigger
function product/unlock_trigger
function dimensions/entrance_trigger
function compressor/compress_trigger
function dimensions/nether/obsidian_storage/trigger
execute if score #1_1 nether_workshop matches 1 run function dimensions/nether/workshop/effect/1_1/ticking
execute if score #7_1 nether_workshop matches 1 run function dimensions/nether/workshop/effect/7_1/ticking
execute if score #10_1 nether_workshop matches 1 run function dimensions/nether/workshop/effect/10_1/ticking

# 플레이어 도구 지급
function tool/update_created_tool
function player/give_tool
execute as @a run recipe take @s *



# 자원 생산 틱 관리
function product/product_managing_by_tick
function dimensions/nether/piglin_head/ticking

# 드릴 틱 관리
function dimensions/overworld/drill/ticking
function product/limit_materials
