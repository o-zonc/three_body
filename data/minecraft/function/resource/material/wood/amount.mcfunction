execute store result score #wood_amount tmp run function resource/production/amount {id:"wood"}
execute if score #wood_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #wood_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #wood_amount tmp *= #advancement_reward_multiplier tmp
function dawn/amplifier/apply {score:"#wood_amount",dim:"overworld",final:100}
return run scoreboard players get #wood_amount tmp
