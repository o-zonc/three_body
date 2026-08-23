execute store result score #lapis_amount tmp run function resource/production/amount {id:"lapis"}
execute if score #lapis_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 2
execute if score #lapis_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #lapis_amount tmp *= #advancement_reward_multiplier tmp
function dawn/amplifier/apply {score:"#lapis_amount",dim:"overworld",final:150}
return run scoreboard players get #lapis_amount tmp
