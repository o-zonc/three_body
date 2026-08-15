# 생산 요소 업그레이드

# 1째 자리 --> 자리 수 유지 용 숫자
# 2째 자리 --> 오버월드(1), 네더(2), 엔드(3)
# 3~4째 자리 --> 업그레이드 요소



# 오버월드 (11XX)
execute as @a[tag=player] if score @s upgrade_trigger matches 1101 run function resource/overworld/wood/trigger/upgrade_regen
execute as @a[tag=player] if score @s upgrade_trigger matches 1102 run function resource/overworld/stone/trigger/upgrade_regen
execute as @a[tag=player] if score @s upgrade_trigger matches 1103 run function resource/overworld/mob/trigger/upgrade_regen
execute as @a[tag=player] if score @s upgrade_trigger matches 1104 run function dimensions/overworld/drill/trigger/upgrade_speed
execute as @a[tag=player] if score @s upgrade_trigger matches 1105 run function dimensions/overworld/drill/trigger/upgrade_limit



# 네더 (12XX)
execute as @a[tag=player] if score @s upgrade_trigger matches 1201 run function resource/nether/gold/trigger/upgrade_regen
execute as @a[tag=player] if score @s upgrade_trigger matches 1202 run function resource/nether/blaze/trigger/upgrade_drop
execute as @a[tag=player] if score @s upgrade_trigger matches 1203 run function dimensions/nether/piglin_head/trigger/upgrade_speed_up




# 엔드 (13XX)



execute as @a[tag=player] if score @s upgrade_trigger matches 1.. run scoreboard players reset @s upgrade_trigger
