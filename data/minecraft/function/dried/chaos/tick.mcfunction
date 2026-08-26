# 메마른 세계 난세기 환경 효과
# 난세기 동안 실외 플레이어는 계속 불타는 모습이 되지만 화염 저항으로 실제 화염 피해는 받지 않습니다.
# 냉각 물약을 마시면 현재 난세기 동안 발화 효과 자체를 무시합니다.

# 냉각 물약을 마신 뒤 남은 유리병 1개를 회수하고 보호 태그를 부여합니다.
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run clear @s minecraft:glass_bottle 1
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run tag @s add dried_chaos_protected
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run tag @s remove dried_chaos_potion_pending

# 난세기가 끝나면 보호 상태와 난세기 발화를 정리합니다.
execute unless score #GLOBAL state_dried matches 1 run tag @a remove dried_chaos_protected
execute unless score #GLOBAL state_dried matches 1 as @a[tag=player,nbt={Dimension:"minecraft:dried"}] run data merge entity @s {Fire:0s}
execute unless score #GLOBAL state_dried matches 1 run return 0

# 하늘이 직접 보이는 실외 플레이어에게만 적용합니다.
# 화염 저항을 짧게 계속 갱신해 불꽃 연출만 남기고 화염 피해는 막습니다.
execute as @a[tag=player,tag=!dried_chaos_protected,nbt={Dimension:"minecraft:dried"}] at @s if predicate player/can_see_sky run effect give @s minecraft:fire_resistance 2 0 true
execute as @a[tag=player,tag=!dried_chaos_protected,nbt={Dimension:"minecraft:dried"}] at @s if predicate player/can_see_sky run data merge entity @s {Fire:40s}

# 실내로 들어가거나 냉각 물약으로 보호받으면 난세기 발화를 즉시 끕니다.
execute as @a[tag=player,nbt={Dimension:"minecraft:dried"}] at @s unless predicate player/can_see_sky run data merge entity @s {Fire:0s}
execute as @a[tag=player,tag=dried_chaos_protected,nbt={Dimension:"minecraft:dried"}] run data merge entity @s {Fire:0s}
