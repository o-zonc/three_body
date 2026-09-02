# 메마른 세계 난세기 환경 효과
# 난세기 동안 실외 플레이어는 계속 불타며 실제 화염 피해를 받습니다.
# 냉각 물약을 마시면 현재 난세기 동안 발화 효과 자체를 무시합니다.

# 엔딩 중에는 화염 타이머와 보호 상태를 그대로 보존합니다.
execute if entity @a[tag=ending_active] run return 0

# 냉각 물약을 마신 뒤 남은 유리병 1개를 회수하고 보호 태그를 부여합니다.
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run clear @s minecraft:glass_bottle 1
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run tag @s add dried_chaos_protected
execute as @a[tag=dried_chaos_potion_pending] unless items entity @s inventory.* minecraft:potion[minecraft:custom_data~{dried_chaos_potion:1b}] run tag @s remove dried_chaos_potion_pending

# 난세기가 끝나면 보호 상태와 화염 피해 타이머를 정리합니다.
execute unless score #GLOBAL state_dried matches 1 run tag @a remove dried_chaos_protected
execute unless score #GLOBAL state_dried matches 1 run scoreboard players set #dried_chaos_fire_timer tmp 0
execute unless score #GLOBAL state_dried matches 1 run return 0

# 플레이어의 Fire NBT는 명령으로 수정할 수 없으므로 화염 입자와 on_fire 피해로 구현합니다.
# 하늘이 직접 보이는 보호받지 않은 실외 플레이어에게만 1초마다 피해를 줍니다.
scoreboard players add #dried_chaos_fire_timer tmp 1
execute if score #dried_chaos_fire_timer tmp matches 20.. run scoreboard players set #dried_chaos_fire_timer tmp 0
execute as @a[tag=player,tag=!dried_chaos_protected,nbt={Dimension:"minecraft:dried"}] at @s if predicate player/can_see_sky run particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0.01 8 force @s
execute if score #dried_chaos_fire_timer tmp matches 0 as @a[tag=player,tag=!dried_chaos_protected,nbt={Dimension:"minecraft:dried"}] at @s if predicate player/can_see_sky run damage @s 1 minecraft:on_fire

# 실내로 들어가거나 냉각 물약으로 보호받으면 화염 효과가 적용되지 않습니다.
