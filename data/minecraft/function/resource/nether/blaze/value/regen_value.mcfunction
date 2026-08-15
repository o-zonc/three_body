scoreboard players set #blaze_regen_value tmp 100
execute if score #nether_7 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run scoreboard players set #three tmp 3
execute if score #nether_7 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run scoreboard players operation #blaze_regen_value tmp /= #three tmp
return run scoreboard players get #blaze_regen_value tmp