# 얼어붙은 세계 난세기 환경 패널티
# 비보호 플레이어는 장소와 무관하게 채굴 피로 I을 받고, 실외에서는 점차 빙결됩니다.
# 보온 물약을 마시면 현재 난세기 동안 두 패널티를 모두 받지 않습니다.

# 보온 물약을 마신 뒤 남은 유리병 1개를 회수하고 보호 태그를 부여합니다.
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run clear @s minecraft:glass_bottle 1
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run tag @s add frozen_chaos_protected
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run tag @s remove frozen_chaos_potion_pending

# 난세기가 끝나면 보호 상태도 종료합니다.
execute unless score #GLOBAL state_frozen matches 1 as @a[tag=frozen_chaos_tracking] run function frozen/chaos/cleanup
execute unless score #GLOBAL state_frozen matches 1 run tag @a remove frozen_chaos_protected
execute unless score #GLOBAL state_frozen matches 1 run return 0

# 다른 플레이어가 얼어붙은 세계에 남아 있어도 차원을 떠난 당사자는 즉시 정리합니다.
execute as @a[tag=frozen_chaos_tracking] unless entity @s[nbt={Dimension:"minecraft:frozen"}] run function frozen/chaos/cleanup
execute unless score #GLOBAL current_dim matches 2 as @a[tag=frozen_chaos_tracking] run function frozen/chaos/cleanup
execute unless score #GLOBAL current_dim matches 2 run return 0
execute unless entity @a[tag=player,nbt={Dimension:"minecraft:frozen"}] run return 0

# 현재 난세기 처리 대상만 추적해 종료 시 불필요한 전체 플레이어 초기화를 피합니다.
tag @a[tag=player,nbt={Dimension:"minecraft:frozen"}] add frozen_chaos_tracking

# 채굴 피로는 실내·지하·미로를 포함한 모든 비보호 플레이어에게 적용합니다.
effect give @a[tag=player,tag=!frozen_chaos_protected,nbt={Dimension:"minecraft:frozen"}] minecraft:mining_fatigue 1 0 true
effect clear @a[tag=frozen_chaos_protected,nbt={Dimension:"minecraft:frozen"}] minecraft:mining_fatigue

# can_see_sky 판정은 플레이어당 한 번만 수행해 이번 tick의 실외 노출 태그로 사용합니다.
tag @a[tag=frozen_chaos_tracking] remove frozen_chaos_exposed
execute as @a[tag=player,tag=!frozen_chaos_protected,nbt={Dimension:"minecraft:frozen"}] at @s if predicate player/can_see_sky run tag @s add frozen_chaos_exposed

execute as @a[tag=frozen_chaos_exposed] run function frozen/chaos/exposed
execute as @a[tag=frozen_chaos_tracking,tag=!frozen_chaos_exposed,tag=!frozen_chaos_protected] run function frozen/chaos/thaw
execute as @a[tag=frozen_chaos_tracking,tag=frozen_chaos_protected] run function frozen/chaos/thaw
