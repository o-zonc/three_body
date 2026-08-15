execute if score #disable_quartz_resourceion var matches 1 run return 0
execute unless score #4_2 nether_workshop matches 1 store result score #quartz_drop tmp run random value 3..6

scoreboard players set #7_1_quartz_storage_bonus tmp 0
scoreboard players set #thousand tmp 1000
execute if score #7_1_quartz_storage_bonus tmp matches 11.. run scoreboard players set #7_1_quartz_storage_bonus tmp 10
scoreboard players operation #quartz_drop tmp += #7_1_quartz_storage_bonus tmp

execute unless score #tool upgrade = #tool upgrade run scoreboard players set #tool upgrade 0
scoreboard players set #quartz_tool_bonus tmp 0
scoreboard players operation #quartz_drop tmp += #quartz_tool_bonus tmp

scoreboard players set #quartz_wood_bonus tmp 0
scoreboard players set #hundred_thousand tmp 100000
execute if score #quartz_wood_bonus tmp matches 11.. run scoreboard players set #quartz_wood_bonus tmp 10
scoreboard players operation #quartz_drop tmp += #quartz_wood_bonus tmp

scoreboard players set #quartz_blaze_powder_bonus tmp 0
scoreboard players set #hundred tmp 100
execute if score #quartz_blaze_powder_bonus tmp matches 6.. run scoreboard players set #quartz_blaze_powder_bonus tmp 5
scoreboard players operation #quartz_drop tmp += #quartz_blaze_powder_bonus tmp

execute if score #nether_11_quartz_multiplier advancement matches 1.. run scoreboard players operation #quartz_drop tmp *= #nether_11_quartz_multiplier advancement

scoreboard players operation #material_add_value tmp = #quartz_drop tmp
function resource/add_material/quartz

execute store result score #quartz_remain generate run function resource/nether/quartz/value/regen_value
execute if score #2_2_quartz_overdrive_remain var matches 1.. run scoreboard players remove #2_2_quartz_overdrive_remain var 1
