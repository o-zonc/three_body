execute store result score #copper_amount tmp run function resource/production/amount {id:"copper"}
execute if score #copper_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 2
execute if score #copper_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #copper_amount tmp *= #advancement_reward_multiplier tmp
return run scoreboard players get #copper_amount tmp
