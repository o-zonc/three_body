scoreboard players set #nether_workshop_effects_disabled tmp 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run scoreboard players set #nether_workshop_effects_disabled tmp 1
scoreboard players set #5_1_effective tmp 0
execute if score #5_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 unless score #trial_active trial matches 1 run scoreboard players set #5_1_effective tmp 1
execute if score #5_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #creation_restored trial matches 1 run scoreboard players set #5_1_effective tmp 1
execute if score #5_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 if score #trial_active trial matches 1 if score #trial_2 advancement matches 1 unless score #trial_advancement_reward_disabled var matches 1 run scoreboard players set #5_1_effective tmp 1
execute if score #5_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players set #5_1_effective tmp 1
