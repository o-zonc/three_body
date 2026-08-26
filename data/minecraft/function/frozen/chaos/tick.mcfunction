# 얼어붙은 세계 난세기 환경 패널티
# 실외(can_see_sky) 플레이어에게 채굴 피로 I을 부여합니다.
# 보온 물약을 마시면 현재 난세기 동안 패널티를 받지 않습니다.

# 보온 물약을 마신 뒤 남은 유리병 1개를 회수하고 보호 태그를 부여합니다.
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run clear @s minecraft:glass_bottle 1
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run tag @s add frozen_chaos_protected
execute as @a[tag=frozen_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{frozen_chaos_potion:1b}] run tag @s remove frozen_chaos_potion_pending

# 난세기가 끝나면 보호 상태도 종료합니다.
execute unless score #GLOBAL state_frozen matches 1 run tag @a remove frozen_chaos_protected
execute unless score #GLOBAL state_frozen matches 1 run return 0
execute unless score #GLOBAL current_dim matches 2 run return 0

execute as @a[tag=player,tag=!frozen_chaos_protected,nbt={Dimension:"minecraft:frozen"}] at @s if predicate player/can_see_sky run effect give @s minecraft:mining_fatigue 1 0 true
