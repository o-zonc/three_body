# 자원 상점 보호
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #wood_lvl material_shop = #vault_wood_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #stone_lvl material_shop = #vault_stone_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #coal_lvl material_shop = #vault_coal_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #copper_lvl material_shop = #vault_copper_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #iron_lvl material_shop = #vault_iron_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #gold_lvl material_shop = #vault_gold_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #diamond_lvl material_shop = #vault_diamond_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #emerald_lvl material_shop = #vault_emerald_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #lapis_lvl material_shop = #vault_lapis_shop tmp
execute if score #vault_shop_first tmp matches 1 run scoreboard players operation #xp_lvl material_shop = #vault_xp_shop tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #heat_second_lvl upgrade = #vault_heat_second tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #cold_second_lvl upgrade = #vault_cold_second tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #gold_second_lvl upgrade = #vault_gold_second tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #diamond_second_lvl upgrade = #vault_diamond_second tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #special_second_lvl upgrade = #vault_special_second tmp
execute if score #vault_shop_second tmp matches 1 run scoreboard players operation #get_second_lvl upgrade = #vault_get_second tmp

# 시설 보호
execute if score #vault_observatory tmp matches 1 if score #vault_observatory_owned tmp matches 1 run advancement grant @a only 0_overworld/20_observatory
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run advancement grant @a only 0_overworld/21_alchemy_workshop
execute if score #vault_alchemy tmp matches 1 run scoreboard players operation #level alchemy_workshop = #vault_alchemy_level tmp
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run scoreboard players set #alchemy_workshop unlock 1
execute if score #vault_factory tmp matches 1 run scoreboard players operation #GLOBAL factory_build_stage = #vault_factory_stage tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #GLOBAL factory_elevator_unlocked = #vault_factory_elevator tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #wood factory_level = #vault_factory_wood tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #stone factory_level = #vault_factory_stone tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #coal factory_level = #vault_factory_coal tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #copper factory_level = #vault_factory_copper tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #iron factory_level = #vault_factory_iron tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #gold factory_level = #vault_factory_gold tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #diamond factory_level = #vault_factory_diamond tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #emerald factory_level = #vault_factory_emerald tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #lapis factory_level = #vault_factory_lapis tmp
execute if score #vault_factory tmp matches 1 run scoreboard players operation #cold factory_level = #vault_factory_cold tmp
execute if score #vault_accelerator tmp matches 1 run scoreboard players operation #GLOBAL accelerator_level = #vault_accelerator_level tmp
execute if score #vault_time_machine tmp matches 1 run scoreboard players operation #GLOBAL time_machine_level = #vault_time_machine_level tmp
execute if score #vault_factory tmp matches 1 if score #vault_factory_stage tmp matches 1.. run function common/structure/factory/on

# 시간 보관소: 가장 높은 달성 시대부터 적용한다.
scoreboard players set #overworld civilization_age 0
execute if score #time_bank meta matches 5.. run scoreboard players set #overworld civilization_age 5
execute if score #time_bank meta matches 20.. run scoreboard players set #overworld civilization_age 6
execute if score #time_bank meta matches 50.. run scoreboard players set #overworld civilization_age 7
execute if score #time_bank meta matches 100.. run scoreboard players set #overworld civilization_age 8
execute if score #vault_elevator tmp matches 1 run scoreboard players operation #GLOBAL elevator_unlocked = #vault_elevator_level tmp

# 막대기 발전 단계는 첫 상점/생산 단계로 취급해 별도 보호한다.
execute if score #vault_stick_progress tmp matches 1 run scoreboard players operation #wood_regen_lvl upgrade = #vault_wood_regen tmp
execute if score #vault_stick_progress tmp matches 1 run scoreboard players operation #wood_lvl material_shop = #vault_wood_shop tmp

# 자동 인출은 한 번 달성하면 영구 유지한다.
execute if score #information_bank meta matches 500.. run scoreboard players set #information_auto_withdraw meta 1
execute if score #time_bank meta matches 250.. run scoreboard players set #time_auto_withdraw meta 1

# 발전과제 보상 복원
execute if score #vault_reward_wood tmp matches 1.. run function resource/advancement_reward/wood/enable
execute if score #vault_reward_coal tmp matches 1.. run function resource/advancement_reward/coal/enable
execute if score #vault_reward_copper tmp matches 1.. run function resource/advancement_reward/copper/enable
execute if score #vault_reward_iron tmp matches 1.. run function resource/advancement_reward/iron/enable
function shop/third/update_capacities
function meta/sync
