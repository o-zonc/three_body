# tick
# 매 틱 실행

scoreboard objectives add var dummy
scoreboard objectives add tmp dummy



# 발전 과제
scoreboard objectives add advancement dummy



# 자원 변수
scoreboard objectives add material dummy

# 해금 변수
scoreboard objectives add unlock dummy

# 업그레이드 변수
scoreboard objectives add upgrade dummy

# 자원 생산 변수
scoreboard objectives add generate dummy

# 자원 상점 업그레이드 변수
scoreboard objectives add material_shop dummy

# 결정 상점 업그레이드 변수
scoreboard objectives add crystal_shop dummy

# 구매 비용 변수
scoreboard objectives add cost dummy

# 차원 압축 변수
scoreboard objectives add compress dummy

# 피글린 머리 변수
scoreboard objectives add piglin_head dummy

# 네더 공방과 시련 변수
scoreboard objectives add nether_workshop dummy
scoreboard objectives add trial dummy
scoreboard objectives add trial_sidebar dummy
scoreboard objectives add trial_backup dummy

# 컷씬 변수
scoreboard objectives add scene dummy



# 해금 트리거
scoreboard objectives add unlock_trigger trigger
scoreboard players enable @a[tag=player] unlock_trigger

# 업그레이드 트리거
scoreboard objectives add upgrade_trigger trigger
scoreboard players enable @a[tag=player] upgrade_trigger

# 상점 트리거
scoreboard objectives add shop_trigger trigger
scoreboard players enable @a[tag=player] shop_trigger

# 입구 트리거
scoreboard objectives add entrance_trigger trigger
scoreboard players enable @a[tag=player] entrance_trigger

# 차원 압축 및 저장고 트리거
scoreboard objectives add compress_trigger trigger
scoreboard players enable @a[tag=player] compress_trigger
scoreboard objectives add obsidian_storage_trigger trigger
scoreboard players enable @a[tag=player] obsidian_storage_trigger

# 컷씬 트리거
scoreboard objectives add scene_trigger trigger
scoreboard players enable @a[tag=player] scene_trigger

# 시련 시작 트리거
scoreboard objectives add trial_trigger trigger
scoreboard players enable @a[tag=player] trial_trigger



# 자원 변수 초기화
execute unless score #wood material = #wood material run scoreboard players set #wood material 0
execute unless score #stone material = #stone material run scoreboard players set #stone material 0
execute unless score #coal material = #coal material run scoreboard players set #coal material 0
execute unless score #iron material = #iron material run scoreboard players set #iron material 0
execute unless score #obsidian material = #obsidian material run scoreboard players set #obsidian material 0
execute unless score #quartz material = #quartz material run scoreboard players set #quartz material 0
execute unless score #gold material = #gold material run scoreboard players set #gold material 0
execute unless score #blaze_powder material = #blaze_powder material run scoreboard players set #blaze_powder material 0
execute unless score #trial_crystal material = #trial_crystal material run scoreboard players set #trial_crystal material 0
execute unless score #spirit material = #spirit material run scoreboard players set #spirit material 0
execute unless score #trial_crystal_sidebar var = #trial_crystal_sidebar var run scoreboard players set #trial_crystal_sidebar var 0
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
execute unless score #trial unlock = #trial unlock run scoreboard players set #trial unlock 0
execute unless score #tool_created_lvl var = #tool_created_lvl var run scoreboard players set #tool_created_lvl var -1
execute unless score #overworld_advancement_reward_disabled var = #overworld_advancement_reward_disabled var run scoreboard players set #overworld_advancement_reward_disabled var 0
execute unless score #nether_advancement_reward_disabled var = #nether_advancement_reward_disabled var run scoreboard players set #nether_advancement_reward_disabled var 0
execute unless score #trial_advancement_reward_disabled var = #trial_advancement_reward_disabled var run scoreboard players set #trial_advancement_reward_disabled var 0
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


execute unless score #trial_active trial = #trial_active trial run scoreboard players set #trial_active trial 0
execute unless score #trial_id trial = #trial_id trial run scoreboard players set #trial_id trial 0
execute unless score #trial_rule_override trial = #trial_rule_override trial run scoreboard players set #trial_rule_override trial 0
execute unless score #trial_sidebar_tick trial = #trial_sidebar_tick trial run scoreboard players set #trial_sidebar_tick trial 0
execute unless score #creation_fast_wood_regen trial = #creation_fast_wood_regen trial run scoreboard players set #creation_fast_wood_regen trial 0
execute unless score #creation_restored trial = #creation_restored trial run scoreboard players set #creation_restored trial 0
execute unless score #creation_exit_1 trial = #creation_exit_1 trial run scoreboard players set #creation_exit_1 trial 0
execute unless score #creation_exit_2 trial = #creation_exit_2 trial run scoreboard players set #creation_exit_2 trial 0
execute unless score #creation_exit_3 trial = #creation_exit_3 trial run scoreboard players set #creation_exit_3 trial 0
execute unless score #creation_exit_4 trial = #creation_exit_4 trial run scoreboard players set #creation_exit_4 trial 0
execute unless score #dimension_phase trial = #dimension_phase trial run scoreboard players set #dimension_phase trial 0
execute unless score #dimension_shift_count trial = #dimension_shift_count trial run scoreboard players set #dimension_shift_count trial 0
execute unless score #object_weight trial = #object_weight trial run scoreboard players set #object_weight trial 0
execute unless score #object_slowdown trial = #object_slowdown trial run scoreboard players set #object_slowdown trial 100
execute unless score #object_slowdown_rate trial = #object_slowdown_rate trial run scoreboard players set #object_slowdown_rate trial 100
execute unless score #trial_object_completed trial = #trial_object_completed trial run scoreboard players set #trial_object_completed trial 0
execute unless score #trial_emotion_completed trial = #trial_emotion_completed trial run scoreboard players set #trial_emotion_completed trial 0
execute unless score #trial_dimension_completed trial = #trial_dimension_completed trial run scoreboard players set #trial_dimension_completed trial 0
execute unless score #trial_possibility_completed trial = #trial_possibility_completed trial run scoreboard players set #trial_possibility_completed trial 0
execute unless score #trial_creation_completed trial = #trial_creation_completed trial run scoreboard players set #trial_creation_completed trial 0
execute unless score #emotion_fervor trial = #emotion_fervor trial run scoreboard players set #emotion_fervor trial 0
execute unless score #emotion_calm trial = #emotion_calm trial run scoreboard players set #emotion_calm trial 0
execute unless score #emotion_void trial = #emotion_void trial run scoreboard players set #emotion_void trial 0
execute unless score #emotion_limit trial = #emotion_limit trial run scoreboard players set #emotion_limit trial 1000
execute unless score #emotion_void_limit trial = #emotion_void_limit trial run scoreboard players set #emotion_void_limit trial 5
execute unless score #overworld compress = #overworld compress run scoreboard players set #overworld compress 0
execute unless score #nether compress = #nether compress run scoreboard players set #nether compress 0
