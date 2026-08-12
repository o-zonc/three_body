# 차원 이동기 공통 입력 처리
# 주 손에 이동기를 들고 웅크리면 해당 이동기의 핸들러를 호출한다.

execute as @a if predicate three_body:item/dimension_mover if entity @s[tag=shift] run function three_body:mover/dimension
execute as @a if predicate three_body:item/dried_mover if entity @s[tag=shift] run function three_body:mover/dried
execute as @a if predicate three_body:item/frozen_mover if entity @s[tag=shift] run function three_body:mover/frozen
execute as @a if predicate three_body:item/overworld_mover if entity @s[tag=shift] run function three_body:mover/overworld
execute as @a if predicate three_body:item/cosmos_mover if entity @s[tag=shift] run function three_body:mover/cosmos
execute as @a if predicate three_body:item/epiphany if entity @s[tag=shift] run function three_body:mover/transcendence
execute as @a if predicate three_body:item/reactor if entity @s[tag=shift] run function three_body:mover/reactor
