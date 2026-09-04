# 보관량으로 이번 초기화의 보호 플래그를 계산한다.
scoreboard players set #vault_shop_first tmp 0
scoreboard players set #vault_observatory tmp 0
scoreboard players set #vault_shop_second tmp 0
scoreboard players set #vault_dried_relic tmp 0
scoreboard players set #vault_alchemy tmp 0
scoreboard players set #vault_factory tmp 0
scoreboard players set #vault_accelerator tmp 0
scoreboard players set #vault_time_machine tmp 0
scoreboard players set #vault_stone_unlocks tmp 0
scoreboard players set #vault_metal_unlocks tmp 0
scoreboard players set #vault_substrate_unlocks tmp 0
scoreboard players set #vault_gem_unlocks tmp 0
scoreboard players set #vault_stick_progress tmp 0
scoreboard players set #vault_stone_resources tmp 0
scoreboard players set #vault_metal_resources tmp 0
scoreboard players set #vault_gem_resources tmp 0
scoreboard players set #vault_frozen_bridge tmp 0
scoreboard players set #vault_stronghold tmp 0
scoreboard players set #vault_elevator tmp 0
scoreboard players set #vault_tool tmp 0

execute if score #information_bank meta matches 20.. run scoreboard players set #vault_shop_first tmp 1
execute if score #information_bank meta matches 50.. run scoreboard players set #vault_observatory tmp 1
execute if score #information_bank meta matches 100.. run scoreboard players set #vault_shop_second tmp 1
execute if score #information_bank meta matches 150.. run scoreboard players set #vault_dried_relic tmp 1
execute if score #information_bank meta matches 250.. run scoreboard players set #vault_alchemy tmp 1
execute if score #information_bank meta matches 500.. run scoreboard players set #vault_factory tmp 1
execute if score #information_bank meta matches 1000.. run scoreboard players set #vault_accelerator tmp 1
execute if score #information_bank meta matches 2000.. run scoreboard players set #vault_time_machine tmp 1
execute if score #information_bank meta matches 120.. run scoreboard players set #vault_stone_unlocks tmp 1
execute if score #information_bank meta matches 200.. run scoreboard players set #vault_metal_unlocks tmp 1
execute if score #information_bank meta matches 400.. run scoreboard players set #vault_substrate_unlocks tmp 1
execute if score #information_bank meta matches 600.. run scoreboard players set #vault_gem_unlocks tmp 1
execute if score #time_bank meta matches 20.. run scoreboard players set #vault_stick_progress tmp 1
execute if score #time_bank meta matches 60.. run scoreboard players set #vault_stone_resources tmp 1
execute if score #time_bank meta matches 100.. run scoreboard players set #vault_metal_resources tmp 1
execute if score #time_bank meta matches 150.. run scoreboard players set #vault_gem_resources tmp 1
execute if score #time_bank meta matches 20.. run scoreboard players set #vault_frozen_bridge tmp 1
execute if score #time_bank meta matches 70.. run scoreboard players set #vault_stronghold tmp 1
execute if score #time_bank meta matches 100.. run scoreboard players set #vault_elevator tmp 1
execute if score #time_bank meta matches 500.. run scoreboard players set #vault_tool tmp 1

# 보호 대상의 현재 값을 임시 원장에 복사한다.
scoreboard players operation #vault_wood_shop tmp = #wood_lvl material_shop
scoreboard players operation #vault_stone_shop tmp = #stone_lvl material_shop
scoreboard players operation #vault_coal_shop tmp = #coal_lvl material_shop
scoreboard players operation #vault_copper_shop tmp = #copper_lvl material_shop
scoreboard players operation #vault_iron_shop tmp = #iron_lvl material_shop
scoreboard players operation #vault_gold_shop tmp = #gold_lvl material_shop
scoreboard players operation #vault_diamond_shop tmp = #diamond_lvl material_shop
scoreboard players operation #vault_emerald_shop tmp = #emerald_lvl material_shop
scoreboard players operation #vault_lapis_shop tmp = #lapis_lvl material_shop
scoreboard players operation #vault_xp_shop tmp = #xp_lvl material_shop
scoreboard players operation #vault_wood_regen tmp = #wood_regen_lvl upgrade
scoreboard players operation #vault_stone_regen tmp = #stone_regen_lvl upgrade
scoreboard players operation #vault_coal_regen tmp = #coal_regen_lvl upgrade
scoreboard players operation #vault_copper_regen tmp = #copper_regen_lvl upgrade
scoreboard players operation #vault_iron_regen tmp = #iron_regen_lvl upgrade
scoreboard players operation #vault_gold_regen tmp = #gold_regen_lvl upgrade
scoreboard players operation #vault_diamond_regen tmp = #diamond_regen_lvl upgrade
scoreboard players operation #vault_emerald_regen tmp = #emerald_regen_lvl upgrade
scoreboard players operation #vault_lapis_regen tmp = #lapis_regen_lvl upgrade
# 자원군 보호 조건을 충족하더라도 이전 문명에서 실제로 해금한 자원만 복원한다.
scoreboard players operation #vault_unlock_stone tmp = #stone unlock
scoreboard players operation #vault_unlock_coal tmp = #coal unlock
scoreboard players operation #vault_unlock_copper tmp = #copper unlock
scoreboard players operation #vault_unlock_iron tmp = #iron unlock
scoreboard players operation #vault_unlock_gold tmp = #gold unlock
scoreboard players operation #vault_unlock_diamond tmp = #diamond unlock
scoreboard players operation #vault_unlock_heat tmp = #heat unlock
scoreboard players operation #vault_unlock_cold tmp = #cold unlock
scoreboard players operation #vault_unlock_emerald tmp = #emerald unlock
scoreboard players operation #vault_unlock_lapis tmp = #lapis unlock
scoreboard players operation #vault_tool_level tmp = #tool upgrade
scoreboard players operation #vault_heat_second tmp = #heat_second_lvl upgrade
scoreboard players operation #vault_cold_second tmp = #cold_second_lvl upgrade
scoreboard players operation #vault_gold_second tmp = #gold_second_lvl upgrade
scoreboard players operation #vault_diamond_second tmp = #diamond_second_lvl upgrade
scoreboard players operation #vault_special_second tmp = #special_second_lvl upgrade
scoreboard players operation #vault_get_second tmp = #get_second_lvl upgrade
scoreboard players operation #vault_dried_relic_level tmp = #dried_relic_level upgrade
scoreboard players operation #vault_stronghold_overworld tmp = #stronghold_overworld upgrade
scoreboard players operation #vault_stronghold_frozen tmp = #stronghold_frozen upgrade
scoreboard players operation #vault_stronghold_dried tmp = #stronghold_dried upgrade
scoreboard players operation #vault_age tmp = #overworld civilization_age
scoreboard players operation #vault_alchemy_level tmp = #level alchemy_workshop
scoreboard players set #vault_alchemy_lab_level tmp 0
execute if score #alchemy_lab_level upgrade = #alchemy_lab_level upgrade run scoreboard players operation #vault_alchemy_lab_level tmp = #alchemy_lab_level upgrade
scoreboard players operation #vault_factory_stage tmp = #GLOBAL factory_build_stage
scoreboard players operation #vault_factory_elevator tmp = #GLOBAL factory_elevator_unlocked
scoreboard players operation #vault_accelerator_level tmp = #GLOBAL accelerator_level
scoreboard players operation #vault_time_machine_level tmp = #GLOBAL time_machine_level
scoreboard players operation #vault_elevator_level tmp = #GLOBAL elevator_unlocked
scoreboard players operation #vault_factory_wood tmp = #wood factory_level
scoreboard players operation #vault_factory_stone tmp = #stone factory_level
scoreboard players operation #vault_factory_coal tmp = #coal factory_level
scoreboard players operation #vault_factory_copper tmp = #copper factory_level
scoreboard players operation #vault_factory_iron tmp = #iron factory_level
scoreboard players operation #vault_factory_gold tmp = #gold factory_level
scoreboard players operation #vault_factory_diamond tmp = #diamond factory_level
scoreboard players operation #vault_factory_emerald tmp = #emerald factory_level
scoreboard players operation #vault_factory_lapis tmp = #lapis factory_level
scoreboard players operation #vault_factory_cold tmp = #cold factory_level
scoreboard players operation #vault_factory_heat tmp = #heat factory_level

# 발전과제는 영구 기록이므로 시설의 현재 상태는 별도 unlock 값으로 기록한다.
scoreboard players set #vault_observatory_owned tmp 0
execute if score #observatory unlock matches 1.. run scoreboard players set #vault_observatory_owned tmp 1
scoreboard players set #vault_era_owned tmp 0
execute if score #era unlock matches 1.. run scoreboard players set #vault_era_owned tmp 1
scoreboard players set #vault_alchemy_owned tmp 0
execute if score #alchemy_workshop unlock matches 1.. run scoreboard players set #vault_alchemy_owned tmp 1
scoreboard players set #vault_frozen_bridge_owned tmp 0
execute if score #frozen_bridge unlock matches 1.. run scoreboard players set #vault_frozen_bridge_owned tmp 1
scoreboard players set #vault_dried_sulfur_owned tmp 0
execute if score #dried_sulfur unlock matches 1.. run scoreboard players set #vault_dried_sulfur_owned tmp 1
scoreboard players set #vault_dried_cinnabar_owned tmp 0
execute if score #dried_cinnabar unlock matches 1.. run scoreboard players set #vault_dried_cinnabar_owned tmp 1

# 영구 이동기 구매 상태는 시설 보존 임계치와 별도로 기록한다.
scoreboard players set #vault_dimension_mover_owned tmp 0
execute if score #dimension_mover unlock matches 1.. run scoreboard players set #vault_dimension_mover_owned tmp 1
scoreboard players set #vault_shop_mover_owned tmp 0
execute if score #shop_mover unlock matches 1.. run scoreboard players set #vault_shop_mover_owned tmp 1
scoreboard players set #vault_alchemy_mover_owned tmp 0
execute if score #alchemy_mover unlock matches 1.. run scoreboard players set #vault_alchemy_mover_owned tmp 1

# 발전과제 보상은 보관량과 무관하게 영구 보존한다.
scoreboard players operation #vault_reward_wood tmp = #wood_advancement_reward var
scoreboard players operation #vault_reward_stone tmp = #stone_advancement_reward var
scoreboard players operation #vault_reward_coal tmp = #coal_advancement_reward var
scoreboard players operation #vault_reward_copper tmp = #copper_advancement_reward var
scoreboard players operation #vault_reward_iron tmp = #iron_advancement_reward var
scoreboard players operation #vault_reward_lapis tmp = #lapis_advancement_reward var
