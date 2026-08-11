# 스토리 trigger는 플레이어마다 항상 다시 활성화
# trigger는 사용 후 자동으로 비활성화되므로 tick에서 보장한다.
scoreboard players enable @a intro_skip
scoreboard players enable @a tutorial

# 플레이어 상태
execute as @a if predicate three_body:player/sneaking run tag @s add shift
execute as @a unless predicate three_body:player/sneaking run tag @s remove shift

# 차원 이동기: 극야에서는 사용 제한
# 극야 차원에서 차원 이동기를 사용하려고 하면 경고를 표시
execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/dimension_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/dimension_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/dimension_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/dried_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/dried_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/dried_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/frozen_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/frozen_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/frozen_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/overworld_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/overworld_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/overworld_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

execute as @a at @s if entity @s[tag=shift] if predicate three_body:item/cosmos_mover if dimension three_body:polarnight unless entity @s[tag=dimension_mover_blocked] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute as @a if predicate three_body:player/sneaking if predicate three_body:item/cosmos_mover if dimension three_body:polarnight run tag @s add dimension_mover_blocked
execute as @a unless entity @s[tag=shift] run tag @s remove dimension_mover_blocked
execute as @a unless predicate three_body:item/cosmos_mover run tag @s remove dimension_mover_blocked
execute as @a unless dimension three_body:polarnight run tag @s remove dimension_mover_blocked

# 차원 이동기: 주 손에 들고 웅크리면 실행
execute as @a at @s if predicate three_body:item/dimension_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:common/disaster/do

# 메마른 이동기: 주 손에 들고 웅크리면 실행
execute as @a at @s if predicate three_body:item/dried_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:dried/move

# 얼어붙은 이동기: 주 손에 들고 웅크리면 실행
execute as @a at @s if predicate three_body:item/frozen_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:frozen/move

# 오버월드 이동기: 주 손에 들고 웅크리면 실행
execute as @a at @s if predicate three_body:item/overworld_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:common/move

# 우주 이동기: 주 손에 들고 웅크리면 실행
execute as @a at @s if predicate three_body:item/cosmos_mover if entity @s[tag=shift] unless dimension three_body:polarnight run function three_body:cosmos/move

# 인터랙션 이벤트
function three_body:interaction/detect
