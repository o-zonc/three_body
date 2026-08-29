# Macro args: id, amount, reward
# 지정 자원의 보유량을 기준량으로 나눈 몫을 해당 정산 보상에 더한다.
$scoreboard players operation #reckoning_resource_reward tmp = #$(id) material
$scoreboard players set #reckoning_resource_divisor tmp $(amount)
scoreboard players operation #reckoning_resource_reward tmp /= #reckoning_resource_divisor tmp
$scoreboard players operation #reckoning_$(reward)_reward tmp += #reckoning_resource_reward tmp
