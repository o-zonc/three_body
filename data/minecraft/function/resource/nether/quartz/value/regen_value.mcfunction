execute store result score #quartz_regen_value tmp run function resource/nether/quartz/value/regen_base_value
scoreboard players set #nether_workshop_effects_disabled tmp 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run scoreboard players set #nether_workshop_effects_disabled tmp 1

scoreboard players set #ten tmp 10
execute if score #2_2_quartz_overdrive_remain var matches 1.. run scoreboard players operation #quartz_regen_value tmp /= #ten tmp
scoreboard players set #three tmp 3
scoreboard players set #four tmp 4
execute if score #6_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_regen_value tmp *= #three tmp
execute if score #6_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_regen_value tmp *= #three tmp
execute if score #6_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_regen_value tmp /= #four tmp
execute if score #6_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_regen_value tmp /= #four tmp
scoreboard players set #seven tmp 7
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_regen_value tmp *= #seven tmp
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_regen_value tmp *= #seven tmp
execute if score #10_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_regen_value tmp /= #ten tmp
execute if score #10_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_regen_value tmp /= #ten tmp

scoreboard players set #11_1_quartz_regen_reduce_percent tmp 0
scoreboard players set #hundred_million tmp 100000000
scoreboard players set #nine tmp 9
scoreboard players set #hundred tmp 100
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp = #compressed_overworld_crystal material
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp /= #hundred_million tmp
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp *= #nine tmp
scoreboard players set #11_1_quartz_regen_multiplier tmp 100
scoreboard players operation #11_1_quartz_regen_multiplier tmp -= #11_1_quartz_regen_reduce_percent tmp
execute if score #11_1_quartz_regen_multiplier tmp matches ..0 run scoreboard players set #11_1_quartz_regen_multiplier tmp 1
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #quartz_regen_value tmp *= #11_1_quartz_regen_multiplier tmp
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #quartz_regen_value tmp /= #hundred tmp
execute if score #quartz_regen_value tmp matches ..0 run scoreboard players set #quartz_regen_value tmp 1

execute if score #trial_3 advancement matches 1 unless score #trial_advancement_reward_disabled var matches 1 run scoreboard players set #quartz_regen_value tmp 1

return run scoreboard players get #quartz_regen_value tmp
