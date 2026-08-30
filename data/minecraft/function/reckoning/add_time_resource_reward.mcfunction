# Macro args: id
# 첫 50개는 10개당 시간 1조각, 50개 초과분은 50개당 시간 1조각으로 환산한다.
$scoreboard players operation #reckoning_time_resource_amount tmp = #$(id) material

# 첫 50개의 보상: min(보유량, 50) / 10
scoreboard players operation #reckoning_time_resource_initial tmp = #reckoning_time_resource_amount tmp
execute if score #reckoning_time_resource_initial tmp matches 51.. run scoreboard players set #reckoning_time_resource_initial tmp 50
scoreboard players set #reckoning_time_resource_divisor tmp 10
scoreboard players operation #reckoning_time_resource_initial tmp /= #reckoning_time_resource_divisor tmp
scoreboard players operation #reckoning_time_reward tmp += #reckoning_time_resource_initial tmp

# 50개 초과분의 보상: max(보유량 - 50, 0) / 50
scoreboard players operation #reckoning_time_resource_excess tmp = #reckoning_time_resource_amount tmp
scoreboard players remove #reckoning_time_resource_excess tmp 50
execute if score #reckoning_time_resource_excess tmp matches ..0 run return 0
scoreboard players set #reckoning_time_resource_divisor tmp 50
scoreboard players operation #reckoning_time_resource_excess tmp /= #reckoning_time_resource_divisor tmp
scoreboard players operation #reckoning_time_reward tmp += #reckoning_time_resource_excess tmp
