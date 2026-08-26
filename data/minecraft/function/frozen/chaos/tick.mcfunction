# 얼어붙은 세계 난세기 환경 패널티
# 실외(can_see_sky) 플레이어에게 채굴 피로 I을 부여합니다.
# 보온 물약의 성급함 효과가 있으면 패널티를 받지 않습니다.

execute unless score #GLOBAL current_dim matches 2 run return 0

execute if score #GLOBAL state_frozen matches 1 as @a[tag=player,nbt={Dimension:"minecraft:frozen"}] at @s if predicate player/can_see_sky unless predicate player/has_haste run effect give @s minecraft:mining_fatigue 1 0 true

# 보온 물약을 마신 뒤 남은 유리병 1개를 회수합니다.
# 구매 후 해당 커스텀 물약이 인벤토리에서 사라진 순간 한 번만 실행됩니다.
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run clear @s minecraft:glass_bottle 1
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run tag @s remove frozen_chaos_potion_pending
