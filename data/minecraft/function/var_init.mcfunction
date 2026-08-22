# tick
# 매 틱 실행
scoreboard objectives add var dummy
scoreboard objectives add tmp dummy

scoreboard objectives add advancement dummy
scoreboard objectives add civilization_age dummy
scoreboard objectives add alchemy_workshop dummy

scoreboard objectives add material dummy
scoreboard objectives add meta dummy

scoreboard objectives add unlock dummy

scoreboard objectives add upgrade dummy
scoreboard objectives add material_shop dummy

scoreboard objectives add generate dummy



scoreboard objectives add cost dummy

scoreboard objectives add compress dummy

scoreboard objectives add scene dummy

scoreboard objectives add unlock_trigger trigger
scoreboard players enable @a unlock_trigger

scoreboard objectives add upgrade_trigger trigger
scoreboard players enable @a upgrade_trigger

scoreboard objectives add shop_trigger trigger
scoreboard players enable @a shop_trigger

scoreboard objectives add item_trigger trigger
scoreboard players enable @a item_trigger

scoreboard objectives add entrance_trigger trigger
scoreboard players enable @a entrance_trigger

scoreboard objectives add compress_trigger trigger
scoreboard players enable @a compress_trigger
scoreboard objectives add obsidian_storage_trigger trigger
scoreboard players enable @a obsidian_storage_trigger

scoreboard objectives add scene_trigger trigger
scoreboard players enable @a scene_trigger

# 천공의 제단 도구 강화 UI
scoreboard objectives add tool_trigger trigger
scoreboard players enable @a tool_trigger

execute unless score #wood material = #wood material run scoreboard players set #wood material 0
execute unless score #information_bank meta = #information_bank meta run scoreboard players set #information_bank meta 0
execute unless score #time_bank meta = #time_bank meta run scoreboard players set #time_bank meta 0
execute unless score #information_storage_lvl upgrade = #information_storage_lvl upgrade run scoreboard players set #information_storage_lvl upgrade 0
execute unless score #time_storage_lvl upgrade = #time_storage_lvl upgrade run scoreboard players set #time_storage_lvl upgrade 0
execute unless score #world_eye_shop_lvl upgrade = #world_eye_shop_lvl upgrade run scoreboard players set #world_eye_shop_lvl upgrade 0
function shop/third/update_capacities
execute if score #information_bank meta matches 1001.. run scoreboard players set #information_bank meta 1000
execute if score #time_bank meta matches 501.. run scoreboard players set #time_bank meta 500
execute if score #information_bank meta matches ..-1 run scoreboard players set #information_bank meta 0
execute if score #time_bank meta matches ..-1 run scoreboard players set #time_bank meta 0
execute unless score #heat_environment_timer generate = #heat_environment_timer generate run scoreboard players set #heat_environment_timer generate 1200
execute unless score #cold_environment_timer generate = #cold_environment_timer generate run scoreboard players set #cold_environment_timer generate 1200
execute unless score #stone material = #stone material run scoreboard players set #stone material 0
execute unless score #coal material = #coal material run scoreboard players set #coal material 0
execute unless score #iron material = #iron material run scoreboard players set #iron material 0
execute unless score #obsidian material = #obsidian material run scoreboard players set #obsidian material 0
execute unless score #gold material = #gold material run scoreboard players set #gold material 0
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
execute unless score #gold unlock = #gold unlock run scoreboard players set #gold unlock 0
execute unless score #area_zone unlock = #area_zone unlock run scoreboard players set #area_zone unlock 0
execute unless score #era unlock = #era unlock run scoreboard players set #era unlock 0
execute unless score #3rd_area unlock = #3rd_area unlock run scoreboard players set #3rd_area unlock 0
execute unless score #tool_created_lvl var = #tool_created_lvl var run scoreboard players set #tool_created_lvl var -1
execute unless score #level alchemy_workshop = #level alchemy_workshop run scoreboard players set #level alchemy_workshop 0
execute unless score #overworld_advancement_reward_disabled var = #overworld_advancement_reward_disabled var run scoreboard players set #overworld_advancement_reward_disabled var 0
execute unless score #nether_advancement_reward_disabled var = #nether_advancement_reward_disabled var run scoreboard players set #nether_advancement_reward_disabled var 0
execute unless score #wood_advancement_reward var = #wood_advancement_reward var run scoreboard players set #wood_advancement_reward var 0
execute unless score #coal_advancement_reward var = #coal_advancement_reward var run scoreboard players set #coal_advancement_reward var 0
execute unless score #copper_advancement_reward var = #copper_advancement_reward var run scoreboard players set #copper_advancement_reward var 0
execute unless score #iron_advancement_reward var = #iron_advancement_reward var run scoreboard players set #iron_advancement_reward var 0
execute unless score #shop_cost_advancement_reward var = #shop_cost_advancement_reward var run scoreboard players set #shop_cost_advancement_reward var 0
execute unless score #gold_regen_lvl upgrade = #gold_regen_lvl upgrade run scoreboard players set #gold_regen_lvl upgrade 0
execute unless score #blaze_drop_lvl upgrade = #blaze_drop_lvl upgrade run scoreboard players set #blaze_drop_lvl upgrade 0
execute unless score #disable_wood_production var = #disable_wood_production var run scoreboard players set #disable_wood_production var 0
execute unless score #disable_stone_production var = #disable_stone_production var run scoreboard players set #disable_stone_production var 0
execute unless score #disable_mob_production var = #disable_mob_production var run scoreboard players set #disable_mob_production var 0
execute unless score #disable_coal_production var = #disable_coal_production var run scoreboard players set #disable_coal_production var 0
execute unless score #disable_iron_production var = #disable_iron_production var run scoreboard players set #disable_iron_production var 0
execute unless score #disable_obsidian_production var = #disable_obsidian_production var run scoreboard players set #disable_obsidian_production var 0
execute unless score #disable_gold_production var = #disable_gold_production var run scoreboard players set #disable_gold_production var 0
execute unless score #disable_compressed_overworld_crystal_production var = #disable_compressed_overworld_crystal_production var run scoreboard players set #disable_compressed_overworld_crystal_production var 0
execute unless score #disable_item_reissue var = #disable_item_reissue var run scoreboard players set #disable_item_reissue var 0

# 타임머신 레벨은 항상 0~4 범위로 유지합니다.
execute unless score #GLOBAL factory_elevator_unlocked = #GLOBAL factory_elevator_unlocked run scoreboard players set #GLOBAL factory_elevator_unlocked 0
execute if score #GLOBAL factory_elevator_unlocked matches ..-1 run scoreboard players set #GLOBAL factory_elevator_unlocked 0
execute if score #GLOBAL factory_elevator_unlocked matches 3.. run scoreboard players set #GLOBAL factory_elevator_unlocked 2
execute unless score #GLOBAL factory_build_stage = #GLOBAL factory_build_stage run scoreboard players set #GLOBAL factory_build_stage 0
execute if score #GLOBAL factory_build_stage matches ..-1 run scoreboard players set #GLOBAL factory_build_stage 0
execute if score #GLOBAL factory_build_stage matches 4.. run scoreboard players set #GLOBAL factory_build_stage 3
execute unless score #heat_second_lvl upgrade = #heat_second_lvl upgrade run scoreboard players set #heat_second_lvl upgrade 0
execute unless score #cold_second_lvl upgrade = #cold_second_lvl upgrade run scoreboard players set #cold_second_lvl upgrade 0
execute unless score #gold_second_lvl upgrade = #gold_second_lvl upgrade run scoreboard players set #gold_second_lvl upgrade 0
execute unless score #diamond_second_lvl upgrade = #diamond_second_lvl upgrade run scoreboard players set #diamond_second_lvl upgrade 0
execute unless score #special_second_lvl upgrade = #special_second_lvl upgrade run scoreboard players set #special_second_lvl upgrade 0
execute unless score #get_second_lvl upgrade = #get_second_lvl upgrade run scoreboard players set #get_second_lvl upgrade 0
execute unless score #GLOBAL time_machine_level = #GLOBAL time_machine_level run scoreboard players set #GLOBAL time_machine_level 0
execute if score #GLOBAL time_machine_level matches ..-1 run scoreboard players set #GLOBAL time_machine_level 0
execute if score #GLOBAL time_machine_level matches 5.. run scoreboard players set #GLOBAL time_machine_level 4

# 입자가속기와 보호막 상태는 기존 월드에서도 안전하게 초기화합니다.
execute unless score #GLOBAL accelerator_level = #GLOBAL accelerator_level run scoreboard players set #GLOBAL accelerator_level 0
execute if score #GLOBAL accelerator_level matches ..-1 run scoreboard players set #GLOBAL accelerator_level 0
execute if score #GLOBAL accelerator_level matches 5.. run scoreboard players set #GLOBAL accelerator_level 4
execute unless score #GLOBAL accelerator_timer = #GLOBAL accelerator_timer run scoreboard players set #GLOBAL accelerator_timer 1200
execute unless score #GLOBAL experiment_cooldown = #GLOBAL experiment_cooldown run scoreboard players set #GLOBAL experiment_cooldown 0
execute unless score #GLOBAL alien_interference = #GLOBAL alien_interference run scoreboard players set #GLOBAL alien_interference 0
execute unless score #GLOBAL alien_timer = #GLOBAL alien_timer run scoreboard players set #GLOBAL alien_timer 1200
execute unless score #GLOBAL shield_charge = #GLOBAL shield_charge run scoreboard players set #GLOBAL shield_charge 0
execute unless score #GLOBAL shield_maintenance = #GLOBAL shield_maintenance run scoreboard players set #GLOBAL shield_maintenance 6000
execute unless score #dried_relic_level upgrade = #dried_relic_level upgrade run scoreboard players set #dried_relic_level upgrade 0
execute if score #dried_relic_level upgrade matches ..-1 run scoreboard players set #dried_relic_level upgrade 0
execute if score #dried_relic_level upgrade matches 5.. run scoreboard players set #dried_relic_level upgrade 4
execute unless score #dried_relic_timer generate = #dried_relic_timer generate run scoreboard players set #dried_relic_timer generate 1200
execute unless score #information_auto_withdraw meta = #information_auto_withdraw meta run scoreboard players set #information_auto_withdraw meta 0
execute unless score #time_auto_withdraw meta = #time_auto_withdraw meta run scoreboard players set #time_auto_withdraw meta 0
execute unless score #GLOBAL reckoning_ready = #GLOBAL reckoning_ready run scoreboard players set #GLOBAL reckoning_ready 0
execute unless score #GLOBAL dawn_bonus_shop = #GLOBAL dawn_bonus_shop run scoreboard players set #GLOBAL dawn_bonus_shop 0
execute unless score #information_capacity_bonus meta = #information_capacity_bonus meta run scoreboard players set #information_capacity_bonus meta 0
execute unless score #time_capacity_bonus meta = #time_capacity_bonus meta run scoreboard players set #time_capacity_bonus meta 0
execute if score #information_bank meta matches 1000.. run scoreboard players set #information_capacity_bonus meta 1
execute if score #time_bank meta matches 500.. run scoreboard players set #time_capacity_bonus meta 1

function factory/init_state
scoreboard players enable @a factory_trigger
scoreboard players enable @a accelerator_trigger
