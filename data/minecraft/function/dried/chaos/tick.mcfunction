# 메마른 세계 난세기 환경 효과
# 난세기 동안 실외에 있는 플레이어를 8초마다 약 1초간 불태웁니다.

# 난세기가 아니면 주기 카운터를 초기화합니다.
execute unless score #GLOBAL state_dried matches 1 run scoreboard players set #dried_chaos_burn_timer tmp 0
execute unless score #GLOBAL state_dried matches 1 run return 0

scoreboard players add #dried_chaos_burn_timer tmp 1
execute unless score #dried_chaos_burn_timer tmp matches 160.. run return 0
scoreboard players set #dried_chaos_burn_timer tmp 0

# 하늘이 직접 보이는 실외 플레이어에게만 적용합니다.
execute as @a[tag=player,nbt={Dimension:"minecraft:dried"}] at @s if predicate player/can_see_sky run data merge entity @s {Fire:20s}
