execute store result score #coal_amount tmp run function resource/production/amount {id:"coal"}
execute if score #coal_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #coal_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #coal_amount tmp *= #advancement_reward_multiplier tmp
function dawn/amplifier/apply {score:"#coal_amount",dim:"overworld",final:100}
return run scoreboard players get #coal_amount tmp
