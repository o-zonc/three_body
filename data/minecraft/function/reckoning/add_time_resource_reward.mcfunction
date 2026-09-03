# 매크로 인수: id
# 첫 100개는 20개당 시간 1조각, 100개 초과분은 100개당 시간 1조각으로 환산한다.
$scoreboard players operation #reckoning_time_resource_amount tmp = #$(id) material

# 첫 100개의 보상: min(보유량, 100) / 20
scoreboard players operation #reckoning_time_resource_initial tmp = #reckoning_time_resource_amount tmp
execute if score #reckoning_time_resource_initial tmp matches 101.. run scoreboard players set #reckoning_time_resource_initial tmp 100
scoreboard players set #reckoning_time_resource_divisor tmp 20
scoreboard players operation #reckoning_time_resource_initial tmp /= #reckoning_time_resource_divisor tmp
scoreboard players operation #reckoning_time_reward tmp += #reckoning_time_resource_initial tmp

# 100개 초과분의 보상: max(보유량 - 100, 0) / 100
scoreboard players operation #reckoning_time_resource_excess tmp = #reckoning_time_resource_amount tmp
scoreboard players remove #reckoning_time_resource_excess tmp 100
execute if score #reckoning_time_resource_excess tmp matches ..0 run return 0
scoreboard players set #reckoning_time_resource_divisor tmp 100
scoreboard players operation #reckoning_time_resource_excess tmp /= #reckoning_time_resource_divisor tmp
scoreboard players operation #reckoning_time_reward tmp += #reckoning_time_resource_excess tmp
