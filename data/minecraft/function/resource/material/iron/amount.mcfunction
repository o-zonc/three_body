execute store result score #iron_amount tmp run function resource/production/amount {id:"iron"}
# 현대 보상은 ×1.5, 입자가속기 건설 보상은 이를 대체해 최종 ×4를 적용한다.
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #iron_amount tmp *= #advancement_reward_multiplier tmp
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_divisor tmp 2
execute if score #iron_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #iron_amount tmp /= #advancement_reward_divisor tmp
execute if score #iron_advancement_reward var matches 2.. unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 4
execute if score #iron_advancement_reward var matches 2.. unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #iron_amount tmp *= #advancement_reward_multiplier tmp
function dawn/amplifier/apply {score:"#iron_amount",dim:"overworld",final:100}
return run scoreboard players get #iron_amount tmp
