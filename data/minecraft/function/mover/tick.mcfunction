# 차원 이동기 공통 입력 처리
# 주 손에 이동기를 들고 웅크리면 해당 이동기의 핸들러를 호출한다.
# 일반 플레이어는 엘리베이터 영역에서 이동기를 사용할 수 없지만, dev는 테스트를 위해 제한을 우회한다.

# 이동기는 버릴 수 없다. 고유 데이터가 붙은 드롭만 즉시 가까운 플레이어에게 돌려준다.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{disaster:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{dried_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{frozen_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{overworld_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{cosmos_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{dev_polarnight_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{dev_dawn_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{altar_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{shop_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{alchemy_move:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{epiphany:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{reactor:1b}] run tag @s add dropped_mover
execute as @e[type=minecraft:item,tag=dropped_mover] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=dropped_mover] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]

# 정보와 시간은 버릴 수 없다.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{three_body:{meta:"information"}}] run tag @s add dropped_meta
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{three_body:{meta:"time"}}] run tag @s add dropped_meta
execute as @e[type=minecraft:item,tag=dropped_meta] run data merge entity @s {PickupDelay:0s}
execute as @e[type=minecraft:item,tag=dropped_meta] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]

# 일반 플레이어의 엘리베이터 내부 이동 제한. dev는 모든 차원 이동기 테스트를 위해 우회합니다.
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=23,y=-63,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=23,y=-41,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=-25,y=-62,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=-25,y=-53,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[tag=shift] if entity @s[x=-25,y=-46,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common

execute as @a if predicate item/dimension_mover if entity @s[tag=shift] run function mover/dimension
execute as @a if predicate item/dried_mover if entity @s[tag=shift] run function mover/dried
execute as @a if predicate item/frozen_mover if entity @s[tag=shift] run function mover/frozen
execute as @a if predicate item/overworld_mover if entity @s[tag=shift] run function mover/overworld
execute as @a if predicate item/cosmos_mover if entity @s[tag=shift] run function mover/cosmos
execute as @a[tag=dev] if predicate item/dev_polarnight_mover if entity @s[tag=shift] run function mover/dev_polarnight
execute as @a[tag=dev] if predicate item/dev_dawn_mover if entity @s[tag=shift] run function mover/dev_dawn
execute as @a if predicate item/epiphany if entity @s[tag=shift] run function mover/transcendence
execute as @a if predicate item/reactor if entity @s[tag=shift] run function mover/reactor
execute as @a if predicate item/altar_mover if entity @s[tag=shift] run function mover/local/altar
execute as @a if predicate item/shop_mover if entity @s[tag=shift] run function mover/local/shop
execute as @a if predicate item/alchemy_mover if entity @s[tag=shift] run function mover/local/alchemy
