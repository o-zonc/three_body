execute if score #disable_quartz_production var matches 1 run return 0
execute unless score #4_2 nether_workshop matches 1 store result score #quartz_drop tmp run random value 3..6
execute if score #trial_active trial matches 1 if score #4_2 nether_workshop matches 1 store result score #quartz_drop tmp run random value 3..6
execute unless score #trial_active trial matches 1 if score #4_2 nether_workshop matches 1 store result score #quartz_drop tmp run random value 6..9
execute if score #creation_restored trial matches 1 if score #4_2 nether_workshop matches 1 store result score #quartz_drop tmp run random value 6..9

scoreboard players set #7_1_quartz_storage_bonus tmp 0
execute if score #7_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp = #obsidian_storage_amount var
execute if score #7_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp = #obsidian_storage_amount var
scoreboard players set #thousand tmp 1000
execute if score #7_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp /= #thousand tmp
execute if score #7_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp /= #thousand tmp
execute if score #7_1_quartz_storage_bonus tmp matches 11.. run scoreboard players set #7_1_quartz_storage_bonus tmp 10
scoreboard players operation #quartz_drop tmp += #7_1_quartz_storage_bonus tmp

execute unless score #tool upgrade = #tool upgrade run scoreboard players set #tool upgrade 0
scoreboard players set #quartz_tool_bonus tmp 0
execute if score #8_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_tool_bonus tmp = #tool upgrade
execute if score #8_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_tool_bonus tmp = #tool upgrade
scoreboard players operation #quartz_drop tmp += #quartz_tool_bonus tmp

scoreboard players set #quartz_wood_bonus tmp 0
execute if score #9_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_wood_bonus tmp = #wood material
execute if score #9_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_wood_bonus tmp = #wood material
scoreboard players set #hundred_thousand tmp 100000
execute if score #9_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_wood_bonus tmp /= #hundred_thousand tmp
execute if score #9_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_wood_bonus tmp /= #hundred_thousand tmp
execute if score #quartz_wood_bonus tmp matches 11.. run scoreboard players set #quartz_wood_bonus tmp 10
scoreboard players operation #quartz_drop tmp += #quartz_wood_bonus tmp

scoreboard players set #quartz_blaze_powder_bonus tmp 0
execute if score #9_2 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp = #blaze_powder material
execute if score #9_2 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp = #blaze_powder material
scoreboard players set #hundred tmp 100
execute if score #9_2 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp /= #hundred tmp
execute if score #9_2 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp /= #hundred tmp
execute if score #quartz_blaze_powder_bonus tmp matches 6.. run scoreboard players set #quartz_blaze_powder_bonus tmp 5
scoreboard players operation #quartz_drop tmp += #quartz_blaze_powder_bonus tmp

execute if score #nether_11_quartz_multiplier advancement matches 1.. run scoreboard players operation #quartz_drop tmp *= #nether_11_quartz_multiplier advancement

scoreboard players operation #material_add_value tmp = #quartz_drop tmp
function product/add_material/quartz

execute store result score #quartz_remain generate run function product/nether/quartz/value/regen_value
execute if score #2_2_quartz_overdrive_remain var matches 1.. run scoreboard players remove #2_2_quartz_overdrive_remain var 1
