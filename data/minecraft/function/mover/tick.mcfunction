# 차원 이동기 공통 입력 처리
# 주 손에 이동기를 들고 웅크리면 해당 이동기의 핸들러를 호출한다.
# 일반 플레이어는 엘리베이터 영역에서 이동기를 사용할 수 없지만, dev는 테스트를 위해 제한을 우회한다.

# 새 item 엔티티가 생긴 경우에만 custom_data 보호 여부를 한 번 검사한다.
execute if entity @e[type=minecraft:item,tag=!drop_checked] run function mover/protect_drops
# 보호 아이템이 아직 월드에 남아 있으면 가까운 플레이어에게 계속 되돌린다.
execute as @e[type=minecraft:item,tag=protected_drop] at @s if entity @p[tag=player,gamemode=adventure,distance=..4] run tp @s @p[tag=player,gamemode=adventure,distance=..4,sort=nearest,limit=1]

# 미로 내부에서는 사용 제한
execute as @a[tag=maze,tag=shift] if items entity @s weapon.* * run return run function mover/restricted/common

# 긴급 탈출기는 구조물 내부 이동 제한보다 먼저 처리해 언제든 오버월드로 복귀할 수 있게 한다.
execute as @a[tag=shift] if predicate item/overworld_escape run return run function mover/overworld_escape

# 일반 플레이어의 엘리베이터 내부 이동 제한. dev는 모든 차원 이동기 테스트를 위해 우회한다.
# shift edge가 발생한 플레이어만 predicate/영역 검사를 수행한다.
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=23,y=-63,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=23,y=-49,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=23,y=-41,z=-25,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=-25,y=-62,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=-25,y=-53,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute as @a[tag=!dev,tag=shift] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * if entity @s[x=-25,y=-46,z=23,dx=2,dy=0,dz=2] run return run function mover/restricted/common
execute in minecraft:frozen as @a[tag=!dev,tag=shift,x=-1,y=68,z=-1,dx=2,dy=1,dz=2] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * run return run function mover/restricted/common
execute in minecraft:frozen as @a[tag=!dev,tag=shift,x=-1,y=74,z=-1,dx=2,dy=1,dz=2] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * run return run function mover/restricted/common
execute in minecraft:frozen as @a[tag=!dev,tag=shift,x=-1,y=80,z=-1,dx=2,dy=1,dz=2] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * run return run function mover/restricted/common
execute in minecraft:frozen as @a[tag=!dev,tag=shift,x=-1,y=53,z=-1,dx=2,dy=1,dz=2] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * run return run function mover/restricted/common
execute in minecraft:frozen as @a[tag=!dev,tag=shift,x=-1,y=86,z=-1,dx=2,dy=1,dz=2] unless predicate item/altar_mover unless predicate item/shop_mover unless predicate item/alchemy_mover unless predicate item/dev_polarnight_mover unless predicate item/dev_dawn_mover if items entity @s weapon.* * run return run function mover/restricted/common

execute as @a[tag=shift] if predicate item/dimension_mover run function mover/dimension
execute as @a[tag=shift] if predicate item/dried_mover run function mover/dried
execute as @a[tag=shift] if predicate item/frozen_mover run function mover/frozen
execute as @a[tag=shift] if predicate item/overworld_mover run function mover/overworld
execute as @a[tag=shift] if predicate item/cosmos_mover run function mover/cosmos
execute as @a[tag=dev,tag=shift] if predicate item/dev_polarnight_mover run function mover/dev_polarnight
execute as @a[tag=dev,tag=shift] if predicate item/dev_dawn_mover run function mover/dev_dawn
execute as @a[tag=shift] if predicate item/epiphany run function mover/transcendence
execute as @a[tag=shift] if predicate item/reactor run function mover/reactor
execute as @a[tag=shift] if predicate item/altar_mover run function mover/local/altar
execute as @a[tag=shift] if predicate item/shop_mover run function mover/local/shop
execute as @a[tag=shift] if predicate item/alchemy_mover run function mover/local/alchemy
