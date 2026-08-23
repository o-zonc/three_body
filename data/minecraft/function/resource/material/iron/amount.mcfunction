execute store result score #iron_amount tmp run function resource/production/amount {id:"iron"}
# 정수 스코어보드에서 1.5배를 정확히 계산하기 위해 3을 곱한 뒤 2로 나눈다.
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #iron_amount tmp *= #advancement_reward_multiplier tmp
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_divisor tmp 2
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #iron_amount tmp /= #advancement_reward_divisor tmp
function dawn/amplifier/apply {score:"#iron_amount",dim:"overworld",final:100}
return run scoreboard players get #iron_amount tmp
