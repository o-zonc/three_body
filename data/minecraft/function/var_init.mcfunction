# tick
# 매 틱 실행
scoreboard objectives add var dummy
scoreboard objectives add tmp dummy

scoreboard objectives add civilization_age dummy
scoreboard objectives add alchemy_workshop dummy
scoreboard objectives add potion_used minecraft.used:minecraft.potion
scoreboard objectives add potion_used_prev dummy

scoreboard objectives add material dummy
scoreboard objectives add meta dummy

scoreboard objectives add unlock dummy

scoreboard objectives add upgrade dummy
scoreboard objectives add material_shop dummy

scoreboard objectives add generate dummy



scoreboard objectives add cost dummy

scoreboard objectives add compress dummy

scoreboard objectives add scene dummy

# 2회차 공통 진행 상태
scoreboard objectives add second_story dummy
scoreboard objectives add second_step dummy
scoreboard objectives add second_timer dummy

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

# 차원 선택 UI
scoreboard objectives add dimension_trigger trigger
scoreboard players set @a dimension_trigger 0
scoreboard players enable @a dimension_trigger

execute unless score #wood material = #wood material run scoreboard players set #wood material 0
execute unless score #information_bank meta = #information_bank meta run scoreboard players set #information_bank meta 0
execute unless score #time_bank meta = #time_bank meta run scoreboard players set #time_bank meta 0
execute unless score #information_bank_unlocked meta = #information_bank_unlocked meta run scoreboard players set #information_bank_unlocked meta 0
execute unless score #time_bank_unlocked meta = #time_bank_unlocked meta run scoreboard players set #time_bank_unlocked meta 0
execute unless score #information_storage_lvl upgrade = #information_storage_lvl upgrade run scoreboard players set #information_storage_lvl upgrade 0
execute unless score #time_storage_lvl upgrade = #time_storage_lvl upgrade run scoreboard players set #time_storage_lvl upgrade 0
execute unless score #world_eye_shop_lvl upgrade = #world_eye_shop_lvl upgrade run scoreboard players set #world_eye_shop_lvl upgrade 0
function shop/third/update_capacities
execute if score #information_bank meta matches 2000.. run scoreboard players set #information_bank_unlocked meta 1
execute if score #time_bank meta matches 1000.. run scoreboard players set #time_bank_unlocked meta 1
execute if score #information_bank meta matches 2001.. run scoreboard players set #information_bank meta 2000
execute if score #time_bank meta matches 1001.. run scoreboard players set #time_bank meta 1000
execute if score #information_bank meta matches ..-1 run scoreboard players set #information_bank meta 0
execute if score #time_bank meta matches ..-1 run scoreboard players set #time_bank meta 0
execute unless score #heat_environment_timer generate = #heat_environment_timer generate run scoreboard players set #heat_environment_timer generate 1200
execute unless score #cold_environment_timer generate = #cold_environment_timer generate run scoreboard players set #cold_environment_timer generate 1200
execute unless score #stone material = #stone material run scoreboard players set #stone material 0
execute unless score #coal material = #coal material run scoreboard players set #coal material 0
execute unless score #iron material = #iron material run scoreboard players set #iron material 0
execute unless score #obsidian material = #obsidian material run scoreboard players set #obsidian material 0
execute unless score #gold material = #gold material run scoreboard players set #gold material 0
execute unless score #nether_quartz_max var = #nether_quartz_max var run scoreboard players set #nether_quartz_max var 0
execute unless score #nether_quartz_max_record var = #nether_quartz_max_record var run scoreboard players set #nether_quartz_max_record var 0
execute unless score #2_2_quartz_overdrive_remain var = #2_2_quartz_overdrive_remain var run scoreboard players set #2_2_quartz_overdrive_remain var 0
execute unless score #obsidian_storage_milestone var = #obsidian_storage_milestone var run scoreboard players set #obsidian_storage_milestone var 0
execute unless score #frozen_maze_active var = #frozen_maze_active var run scoreboard players set #frozen_maze_active var 0
execute unless score #frozen_maze_cleared var = #frozen_maze_cleared var run scoreboard players set #frozen_maze_cleared var 0
execute unless score #frozen_maze_claimed var = #frozen_maze_claimed var run scoreboard players set #frozen_maze_claimed var 0
execute unless score #frozen_maze_started var = #frozen_maze_started var run scoreboard players set #frozen_maze_started var 0
execute unless score #frozen_maze_announced var = #frozen_maze_announced var run scoreboard players set #frozen_maze_announced var 0
execute unless score #maze_type var = #maze_type var run scoreboard players set #maze_type var 0
execute unless score #nether unlock = #nether unlock run scoreboard players set #nether unlock 0
execute unless score #gold unlock = #gold unlock run scoreboard players set #gold unlock 0
execute unless score #area_zone unlock = #area_zone unlock run scoreboard players set #area_zone unlock 0
execute unless score #era unlock = #era unlock run scoreboard players set #era unlock 0
execute unless score #3rd_area unlock = #3rd_area unlock run scoreboard players set #3rd_area unlock 0
execute unless score #tool_created_lvl var = #tool_created_lvl var run scoreboard players set #tool_created_lvl var -1
execute unless score #level alchemy_workshop = #level alchemy_workshop run scoreboard players set #level alchemy_workshop 0
execute unless score #catalyst_cooldown var = #catalyst_cooldown var run scoreboard players set #catalyst_cooldown var 0
execute unless score #catalyst_timer var = #catalyst_timer var run scoreboard players set #catalyst_timer var 0
execute unless score #catalyst_level var = #catalyst_level var run scoreboard players set #catalyst_level var 0
execute unless score #catalyst_multiplier var = #catalyst_multiplier var run scoreboard players set #catalyst_multiplier var 1
# 우는 흑요석의 네 수집 플래그는 0(미수집) 또는 1(수집)만 사용합니다.
execute unless score #crying_overworld var = #crying_overworld var run scoreboard players set #crying_overworld var 0
execute unless score #crying_dried var = #crying_dried var run scoreboard players set #crying_dried var 0
execute unless score #crying_frozen var = #crying_frozen var run scoreboard players set #crying_frozen var 0
execute unless score #crying_dawn var = #crying_dawn var run scoreboard players set #crying_dawn var 0
execute unless score #overworld_advancement_reward_disabled var = #overworld_advancement_reward_disabled var run scoreboard players set #overworld_advancement_reward_disabled var 0
execute unless score #nether_advancement_reward_disabled var = #nether_advancement_reward_disabled var run scoreboard players set #nether_advancement_reward_disabled var 0
execute unless score #wood_advancement_reward var = #wood_advancement_reward var run scoreboard players set #wood_advancement_reward var 0
execute unless score #stone_advancement_reward var = #stone_advancement_reward var run scoreboard players set #stone_advancement_reward var 0
# 이미 해당 시대를 통과한 문명도 데이터팩 갱신 뒤 새 시대 보상을 적용받는다.
execute if entity @a[advancements={0_overworld/12_bronze_age=true}] run function resource/advancement_reward/wood/enable
execute if entity @a[advancements={0_overworld/13_iron_age=true}] run function resource/advancement_reward/stone/enable
execute unless score #coal_advancement_reward var = #coal_advancement_reward var run scoreboard players set #coal_advancement_reward var 0
execute unless score #copper_advancement_reward var = #copper_advancement_reward var run scoreboard players set #copper_advancement_reward var 0
execute unless score #iron_advancement_reward var = #iron_advancement_reward var run scoreboard players set #iron_advancement_reward var 0
execute if entity @a[advancements={0_overworld/22_particle_accelerator=true}] unless score #iron_advancement_reward var matches 2.. run scoreboard players set #iron_advancement_reward var 2
execute unless score #lapis_advancement_reward var = #lapis_advancement_reward var run scoreboard players set #lapis_advancement_reward var 0
execute unless score #shop_cost_advancement_reward var = #shop_cost_advancement_reward var run scoreboard players set #shop_cost_advancement_reward var 0
execute unless score #dried_shop_discount_stage var = #dried_shop_discount_stage var run scoreboard players set #dried_shop_discount_stage var 0
execute if score #dried_shop_discount_stage var matches ..-1 run scoreboard players set #dried_shop_discount_stage var 0
execute if score #dried_shop_discount_stage var matches 3.. run scoreboard players set #dried_shop_discount_stage var 2
execute unless score #gold_regen_lvl upgrade = #gold_regen_lvl upgrade run scoreboard players set #gold_regen_lvl upgrade 0
execute unless score #blaze_drop_lvl upgrade = #blaze_drop_lvl upgrade run scoreboard players set #blaze_drop_lvl upgrade 0
execute unless score #disable_wood_production var = #disable_wood_production var run scoreboard players set #disable_wood_production var 0
execute unless score #disable_stone_production var = #disable_stone_production var run scoreboard players set #disable_stone_production var 0
execute unless score #disable_mob_production var = #disable_mob_production var run scoreboard players set #disable_mob_production var 0
execute unless score #disable_coal_production var = #disable_coal_production var run scoreboard players set #disable_coal_production var 0
execute unless score #disable_iron_production var = #disable_iron_production var run scoreboard players set #disable_iron_production var 0
execute unless score #disable_obsidian_production var = #disable_obsidian_production var run scoreboard players set #disable_obsidian_production var 0
execute unless score #disable_gold_production var = #disable_gold_production var run scoreboard players set #disable_gold_production var 0
execute unless score #disable_item_reissue var = #disable_item_reissue var run scoreboard players set #disable_item_reissue var 0
execute unless score #time_machine_ever_yellow var = #time_machine_ever_yellow var run scoreboard players set #time_machine_ever_yellow var 0
execute unless score #time_machine_ever_blue var = #time_machine_ever_blue var run scoreboard players set #time_machine_ever_blue var 0
execute unless score #time_machine_ever_green var = #time_machine_ever_green var run scoreboard players set #time_machine_ever_green var 0

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
execute unless score #factory_recycle_level upgrade = #factory_recycle_level upgrade run scoreboard players set #factory_recycle_level upgrade 0
execute unless score #factory_energy_level upgrade = #factory_energy_level upgrade run scoreboard players set #factory_energy_level upgrade 0
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
execute if score #dried_relic_level upgrade matches 6.. run scoreboard players set #dried_relic_level upgrade 5
execute unless score #stronghold_overworld upgrade = #stronghold_overworld upgrade run scoreboard players set #stronghold_overworld upgrade 0
execute unless score #stronghold_frozen upgrade = #stronghold_frozen upgrade run scoreboard players set #stronghold_frozen upgrade 0
execute unless score #stronghold_dried upgrade = #stronghold_dried upgrade run scoreboard players set #stronghold_dried upgrade 0
execute unless score #dried_relic_timer generate = #dried_relic_timer generate run scoreboard players set #dried_relic_timer generate 1200
execute unless score #information_auto_withdraw meta = #information_auto_withdraw meta run scoreboard players set #information_auto_withdraw meta 0
execute unless score #time_auto_withdraw meta = #time_auto_withdraw meta run scoreboard players set #time_auto_withdraw meta 0
execute unless score #GLOBAL reckoning_ready = #GLOBAL reckoning_ready run scoreboard players set #GLOBAL reckoning_ready 0
execute unless score #GLOBAL reckoning_pending = #GLOBAL reckoning_pending run scoreboard players set #GLOBAL reckoning_pending 0
execute unless score #GLOBAL reckoning_count = #GLOBAL reckoning_count run scoreboard players set #GLOBAL reckoning_count 0
execute unless score #GLOBAL dawn_bonus_shop = #GLOBAL dawn_bonus_shop run scoreboard players set #GLOBAL dawn_bonus_shop 0
function factory/init_state
scoreboard players enable @a factory_trigger
scoreboard players enable @a accelerator_trigger
