# tick
# 매 틱 실행
scoreboard objectives add var dummy
scoreboard objectives add tmp dummy

scoreboard objectives add advancement dummy

scoreboard objectives add material dummy

scoreboard objectives add unlock dummy

scoreboard objectives add upgrade dummy

scoreboard objectives add generate dummy

scoreboard objectives add material_shop dummy

scoreboard objectives add crystal_shop dummy

scoreboard objectives add cost dummy

scoreboard objectives add compress dummy

scoreboard objectives add piglin_head dummy

scoreboard objectives add nether_workshop dummy

scoreboard objectives add scene dummy

scoreboard objectives add unlock_trigger trigger
scoreboard players enable @a unlock_trigger

scoreboard objectives add upgrade_trigger trigger
scoreboard players enable @a upgrade_trigger

scoreboard objectives add shop_trigger trigger
scoreboard players enable @a shop_trigger

scoreboard objectives add entrance_trigger trigger
scoreboard players enable @a entrance_trigger

scoreboard objectives add compress_trigger trigger
scoreboard players enable @a compress_trigger
scoreboard objectives add obsidian_storage_trigger trigger
scoreboard players enable @a obsidian_storage_trigger

scoreboard objectives add scene_trigger trigger
scoreboard players enable @a scene_trigger

execute unless score #wood material = #wood material run scoreboard players set #wood material 0
execute unless score #stone material = #stone material run scoreboard players set #stone material 0
execute unless score #coal material = #coal material run scoreboard players set #coal material 0
execute unless score #iron material = #iron material run scoreboard players set #iron material 0
execute unless score #obsidian material = #obsidian material run scoreboard players set #obsidian material 0
execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
execute unless score #gold material = #gold material run scoreboard players set #gold material 0
execute unless score #blaze_powder material = #blaze_powder material run scoreboard players set #blaze_powder material 0
execute unless score #spirit material = #spirit material run scoreboard players set #spirit material 0
execute unless score #spirit_sidebar var = #spirit_sidebar var run scoreboard players set #spirit_sidebar var 0
execute unless score #compressed_overworld_crystal material = #compressed_overworld_crystal material run scoreboard players set #compressed_overworld_crystal material 0
execute unless score #compressed_nether_crystal material = #compressed_nether_crystal material run scoreboard players set #compressed_nether_crystal material 0
scoreboard players set #compressed_nether_crystal_max tmp 500000000
execute if score #compressed_nether_crystal material matches ..-1 run scoreboard players set #compressed_nether_crystal material 0
execute if score #compressed_nether_crystal material > #compressed_nether_crystal_max tmp run scoreboard players operation #compressed_nether_crystal material = #compressed_nether_crystal_max tmp
execute unless score #nether_quartz_max var = #nether_quartz_max var run scoreboard players set #nether_quartz_max var 0
execute unless score #nether_quartz_max_record var = #nether_quartz_max_record var run scoreboard players set #nether_quartz_max_record var 0
execute unless score #2_2_quartz_overdrive_remain var = #2_2_quartz_overdrive_remain var run scoreboard players set #2_2_quartz_overdrive_remain var 0
execute unless score #obsidian_storage_milestone var = #obsidian_storage_milestone var run scoreboard players set #obsidian_storage_milestone var 0
execute unless score #nether unlock = #nether unlock run scoreboard players set #nether unlock 0
execute unless score #quartz unlock = #quartz unlock run scoreboard players set #quartz unlock 0
execute unless score #gold unlock = #gold unlock run scoreboard players set #gold unlock 0
execute unless score #blaze unlock = #blaze unlock run scoreboard players set #blaze unlock 0
execute unless score #area_zone unlock = #area_zone unlock run scoreboard players set #area_zone unlock 0
execute unless score #3rd_area unlock = #3rd_area unlock run scoreboard players set #3rd_area unlock 0
execute unless score #tool_created_lvl var = #tool_created_lvl var run scoreboard players set #tool_created_lvl var -1
execute unless score #overworld_advancement_reward_disabled var = #overworld_advancement_reward_disabled var run scoreboard players set #overworld_advancement_reward_disabled var 0
execute unless score #nether_advancement_reward_disabled var = #nether_advancement_reward_disabled var run scoreboard players set #nether_advancement_reward_disabled var 0
execute unless score #gold_regen_lvl upgrade = #gold_regen_lvl upgrade run scoreboard players set #gold_regen_lvl upgrade 0
execute unless score #blaze_drop_lvl upgrade = #blaze_drop_lvl upgrade run scoreboard players set #blaze_drop_lvl upgrade 0
execute unless score #disable_wood_production var = #disable_wood_production var run scoreboard players set #disable_wood_production var 0
execute unless score #disable_stone_production var = #disable_stone_production var run scoreboard players set #disable_stone_production var 0
execute unless score #disable_mob_production var = #disable_mob_production var run scoreboard players set #disable_mob_production var 0
execute unless score #disable_coal_production var = #disable_coal_production var run scoreboard players set #disable_coal_production var 0
execute unless score #disable_iron_production var = #disable_iron_production var run scoreboard players set #disable_iron_production var 0
execute unless score #disable_obsidian_production var = #disable_obsidian_production var run scoreboard players set #disable_obsidian_production var 0
execute unless score #disable_quartz_production var = #disable_quartz_production var run scoreboard players set #disable_quartz_production var 0
execute unless score #disable_gold_production var = #disable_gold_production var run scoreboard players set #disable_gold_production var 0
execute unless score #disable_blaze_production var = #disable_blaze_production var run scoreboard players set #disable_blaze_production var 0
execute unless score #disable_compressed_overworld_crystal_production var = #disable_compressed_overworld_crystal_production var run scoreboard players set #disable_compressed_overworld_crystal_production var 0
execute unless score #disable_item_reissue var = #disable_item_reissue var run scoreboard players set #disable_item_reissue var 0

execute unless score #piglin_shop_lvl piglin_head = #piglin_shop_lvl piglin_head run scoreboard players set #piglin_shop_lvl piglin_head 0
execute unless score #speed_up_lvl piglin_head = #speed_up_lvl piglin_head run scoreboard players set #speed_up_lvl piglin_head 0
execute unless score #stop_all piglin_head = #stop_all piglin_head run scoreboard players set #stop_all piglin_head 0
execute unless score #stop_wood piglin_head = #stop_wood piglin_head run scoreboard players set #stop_wood piglin_head 0
execute unless score #stop_stone piglin_head = #stop_stone piglin_head run scoreboard players set #stop_stone piglin_head 0
execute unless score #stop_mob piglin_head = #stop_mob piglin_head run scoreboard players set #stop_mob piglin_head 0
execute unless score #stop_coal piglin_head = #stop_coal piglin_head run scoreboard players set #stop_coal piglin_head 0
execute unless score #stop_iron piglin_head = #stop_iron piglin_head run scoreboard players set #stop_iron piglin_head 0
execute unless score #stop_obsidian piglin_head = #stop_obsidian piglin_head run scoreboard players set #stop_obsidian piglin_head 0
execute unless score #stop_quartz piglin_head = #stop_quartz piglin_head run scoreboard players set #stop_quartz piglin_head 0
execute unless score #stop_blaze piglin_head = #stop_blaze piglin_head run scoreboard players set #stop_blaze piglin_head 0

execute unless score #1_1 nether_workshop = #1_1 nether_workshop run scoreboard players set #1_1 nether_workshop 0
execute unless score #2_1 nether_workshop = #2_1 nether_workshop run scoreboard players set #2_1 nether_workshop 0
execute unless score #2_2 nether_workshop = #2_2 nether_workshop run scoreboard players set #2_2 nether_workshop 0
execute unless score #3_1 nether_workshop = #3_1 nether_workshop run scoreboard players set #3_1 nether_workshop 0
execute unless score #4_1 nether_workshop = #4_1 nether_workshop run scoreboard players set #4_1 nether_workshop 0
execute unless score #4_2 nether_workshop = #4_2 nether_workshop run scoreboard players set #4_2 nether_workshop 0
execute unless score #5_1 nether_workshop = #5_1 nether_workshop run scoreboard players set #5_1 nether_workshop 0
execute unless score #6_1 nether_workshop = #6_1 nether_workshop run scoreboard players set #6_1 nether_workshop 0
execute unless score #7_1 nether_workshop = #7_1 nether_workshop run scoreboard players set #7_1 nether_workshop 0
execute unless score #8_1 nether_workshop = #8_1 nether_workshop run scoreboard players set #8_1 nether_workshop 0
execute unless score #9_1 nether_workshop = #9_1 nether_workshop run scoreboard players set #9_1 nether_workshop 0
execute unless score #9_2 nether_workshop = #9_2 nether_workshop run scoreboard players set #9_2 nether_workshop 0
execute unless score #10_1 nether_workshop = #10_1 nether_workshop run scoreboard players set #10_1 nether_workshop 0
execute unless score #11_1 nether_workshop = #11_1 nether_workshop run scoreboard players set #11_1 nether_workshop 0
execute unless score #11_2 nether_workshop = #11_2 nether_workshop run scoreboard players set #11_2 nether_workshop 0
execute unless score #12_1 nether_workshop = #12_1 nether_workshop run scoreboard players set #12_1 nether_workshop 0
execute unless score #obsidian_max_up_lvl crystal_shop = #obsidian_max_up_lvl crystal_shop run scoreboard players set #obsidian_max_up_lvl crystal_shop 0
execute unless score #compressed_overworld_crystal_multiple_lvl crystal_shop = #compressed_overworld_crystal_multiple_lvl crystal_shop run scoreboard players set #compressed_overworld_crystal_multiple_lvl crystal_shop 0
execute unless score #material_shop_cost_down_lvl crystal_shop = #material_shop_cost_down_lvl crystal_shop run scoreboard players set #material_shop_cost_down_lvl crystal_shop 0
execute unless score #material_regen_upgrade_cost_down_lvl crystal_shop = #material_regen_upgrade_cost_down_lvl crystal_shop run scoreboard players set #material_regen_upgrade_cost_down_lvl crystal_shop 0
execute unless score #cave_material_regen_speed_up_lvl crystal_shop = #cave_material_regen_speed_up_lvl crystal_shop run scoreboard players set #cave_material_regen_speed_up_lvl crystal_shop 0
execute unless score #drill_speed_up_lvl crystal_shop = #drill_speed_up_lvl crystal_shop run scoreboard players set #drill_speed_up_lvl crystal_shop 0
execute unless score #dig_speed_up_lvl crystal_shop = #dig_speed_up_lvl crystal_shop run scoreboard players set #dig_speed_up_lvl crystal_shop 0