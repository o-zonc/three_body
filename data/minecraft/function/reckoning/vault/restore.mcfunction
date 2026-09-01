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

# 정보 보관소: 이전 문명에서 실제로 해금했던 자원의 상태를 복원한다.
# 실제 노드 배치는 factory 상태 복원 후 restore_nodes_request가 청크를 먼저 확보해 처리한다.
execute if score #vault_stone_unlocks tmp matches 1 if score #vault_unlock_stone tmp matches 1 run scoreboard players set #stone unlock 1
execute if score #vault_stone_unlocks tmp matches 1 if score #vault_unlock_coal tmp matches 1 run scoreboard players set #coal unlock 1

execute if score #vault_metal_unlocks tmp matches 1 if score #vault_unlock_copper tmp matches 1 run scoreboard players set #copper unlock 1
execute if score #vault_metal_unlocks tmp matches 1 if score #vault_unlock_iron tmp matches 1 run scoreboard players set #iron unlock 1
execute if score #vault_metal_unlocks tmp matches 1 if score #vault_unlock_gold tmp matches 1 run scoreboard players set #gold unlock 1
execute if score #vault_metal_unlocks tmp matches 1 if score #vault_unlock_diamond tmp matches 1 run scoreboard players set #diamond unlock 1

execute if score #vault_substrate_unlocks tmp matches 1 if score #vault_unlock_heat tmp matches 1 run scoreboard players set #heat unlock 1
execute if score #vault_substrate_unlocks tmp matches 1 if score #vault_unlock_cold tmp matches 1 run scoreboard players set #cold unlock 1

execute if score #vault_gem_unlocks tmp matches 1 if score #vault_unlock_emerald tmp matches 1 run scoreboard players set #emerald unlock 1
execute if score #vault_gem_unlocks tmp matches 1 if score #vault_unlock_lapis tmp matches 1 run scoreboard players set #lapis unlock 1

# 복원된 강화 단계에 맞춰 얼어붙은 차원의 우는 흑요석 외형도 동기화한다.
execute if score #special_second_lvl upgrade matches 2.. run function crying/frozen_reveal

# 정보 75조각: 고대 문명 발굴 장치의 해금 및 강화 단계를 유지한다.
execute if score #vault_dried_relic tmp matches 1 run scoreboard players operation #dried_relic_level upgrade = #vault_dried_relic_level tmp
execute if score #vault_dried_relic tmp matches 1 if score #dried_relic_level upgrade matches 1.. run function dried/relic/prepare
execute if score #vault_dried_relic tmp matches 1 if score #dried_relic_level upgrade matches 1.. run scoreboard players operation #dried_relic_timer generate = #dried_relic_interval tmp

# 시설 보호: 발전과제는 건드리지 않고 현재 시설 상태만 복원한다.
execute if score #vault_observatory tmp matches 1 if score #vault_observatory_owned tmp matches 1 run scoreboard players set #observatory unlock 1
execute if score #vault_observatory tmp matches 1 if score #vault_observatory_owned tmp matches 1 run function common/structure/observatory/on
execute if score #vault_observatory tmp matches 1 if score #vault_observatory_owned tmp matches 1 if score #vault_era_owned tmp matches 1 run scoreboard players set #era unlock 1
execute if score #vault_observatory tmp matches 1 if score #vault_observatory_owned tmp matches 1 if score #vault_era_owned tmp matches 1 at @e[type=interaction,tag=era,limit=1] run setblock ~ ~ ~ respawn_anchor[charges=4] replace
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run scoreboard players operation #level alchemy_workshop = #vault_alchemy_level tmp
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run scoreboard players set #alchemy_workshop unlock 1
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run scoreboard players operation #alchemy_lab_level upgrade = #vault_alchemy_lab_level tmp
execute if score #vault_alchemy tmp matches 1 if score #vault_alchemy_owned tmp matches 1 run function common/structure/alchemy_workshop/on

# 영구 구매한 이동기는 시설 보존 임계치와 무관하게 구매 상태를 유지한다.
# 아이템은 reset_progress에서 이미 복원하며, 상점·공방·제단 이동기는
# 오버월드 복귀 시 mover/local/restore에서만 지급한다.
execute if score #vault_dimension_mover_owned tmp matches 1 run scoreboard players set #dimension_mover unlock 1
execute if score #vault_shop_mover_owned tmp matches 1 run scoreboard players set #shop_mover unlock 1
execute if score #vault_alchemy_mover_owned tmp matches 1 run scoreboard players set #alchemy_mover unlock 1

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
execute if score #vault_factory tmp matches 1 run scoreboard players operation #heat factory_level = #vault_factory_heat tmp
execute if score #vault_accelerator tmp matches 1 run scoreboard players operation #GLOBAL accelerator_level = #vault_accelerator_level tmp
execute if score #vault_time_machine tmp matches 1 run scoreboard players operation #GLOBAL time_machine_level = #vault_time_machine_level tmp
execute if score #vault_factory tmp matches 1 if score #vault_factory_stage tmp matches 1.. run function common/structure/factory/on

# 시간 보관소: 가장 높은 달성 시대부터 적용한다.
scoreboard players set #overworld civilization_age 0
execute if score #time_bank meta matches 10.. run scoreboard players set #overworld civilization_age 5
execute if score #time_bank meta matches 40.. run scoreboard players set #overworld civilization_age 6
execute if score #time_bank meta matches 80.. run scoreboard players set #overworld civilization_age 7
execute if score #time_bank meta matches 200.. run scoreboard players set #overworld civilization_age 8

# 시간 10조각: 이전 문명에서 개방한 얼어붙은 다리를 유지한다.
execute if score #vault_frozen_bridge tmp matches 1 if score #vault_frozen_bridge_owned tmp matches 1 run scoreboard players set #frozen_bridge unlock 1
execute if score #vault_frozen_bridge tmp matches 1 if score #vault_frozen_bridge_owned tmp matches 1 run function frozen/structure/bridge/on

# 시간 20조각: 이전 문명에서 구매한 메마른 세계의 유황·진사 업그레이드를 유지한다.
execute if score #vault_dried_structures tmp matches 1 if score #vault_dried_sulfur_owned tmp matches 1 run function dried/structure/sulfur/on
execute if score #vault_dried_structures tmp matches 1 if score #vault_dried_cinnabar_owned tmp matches 1 run function dried/structure/cinnabar/on

# 발전과제 보상: 한 번 해금한 얼어붙은 세계 상점과 미로는 문명이 바뀌어도 유지한다.
execute if entity @a[advancements={1_frozen/10_shop=true}] run scoreboard players set #frozen_shop unlock 1
execute if entity @a[advancements={1_frozen/10_shop=true}] run function frozen/structure/shop/on
execute if entity @a[advancements={1_frozen/12_maze=true}] run scoreboard players set #frozen_maze unlock 1
execute if entity @a[advancements={1_frozen/12_maze=true}] run function frozen/structure/maze/on

# 시간 35조각: 세 차원 유적지의 복구 상태를 각각 유지한다.
execute if score #vault_stronghold tmp matches 1 run scoreboard players operation #stronghold_overworld upgrade = #vault_stronghold_overworld tmp
execute if score #vault_stronghold tmp matches 1 run scoreboard players operation #stronghold_frozen upgrade = #vault_stronghold_frozen tmp
execute if score #vault_stronghold tmp matches 1 run scoreboard players operation #stronghold_dried upgrade = #vault_stronghold_dried tmp
execute if score #vault_stronghold tmp matches 1 if score #stronghold_overworld upgrade matches 1.. in minecraft:dried run setblock 18 65 -6 minecraft:grass_block
execute if score #vault_stronghold tmp matches 1 if score #stronghold_frozen upgrade matches 1.. in minecraft:dried run setblock 12 65 0 minecraft:packed_ice
execute if score #vault_stronghold tmp matches 1 if score #stronghold_dried upgrade matches 1.. in minecraft:dried run setblock 18 65 6 minecraft:sandstone
execute if score #vault_elevator tmp matches 1 run scoreboard players operation #GLOBAL elevator_unlocked = #vault_elevator_level tmp

# 막대기 발전 단계는 첫 상점/생산 단계로 취급해 별도 보호한다.
execute if score #vault_stick_progress tmp matches 1 run scoreboard players operation #wood_regen_lvl upgrade = #vault_wood_regen tmp
execute if score #vault_stick_progress tmp matches 1 run scoreboard players operation #wood_lvl material_shop = #vault_wood_shop tmp

# 시간 30/50/75조각: 석재/금속/보석 자원의 재생산 업그레이드를 유지한다.
execute if score #vault_stone_resources tmp matches 1 run scoreboard players operation #stone_regen_lvl upgrade = #vault_stone_regen tmp
execute if score #vault_stone_resources tmp matches 1 run scoreboard players operation #coal_regen_lvl upgrade = #vault_coal_regen tmp
execute if score #vault_metal_resources tmp matches 1 run scoreboard players operation #copper_regen_lvl upgrade = #vault_copper_regen tmp
execute if score #vault_metal_resources tmp matches 1 run scoreboard players operation #iron_regen_lvl upgrade = #vault_iron_regen tmp
execute if score #vault_metal_resources tmp matches 1 run scoreboard players operation #gold_regen_lvl upgrade = #vault_gold_regen tmp
execute if score #vault_metal_resources tmp matches 1 run scoreboard players operation #diamond_regen_lvl upgrade = #vault_diamond_regen tmp
execute if score #vault_gem_resources tmp matches 1 run scoreboard players operation #emerald_regen_lvl upgrade = #vault_emerald_regen tmp
execute if score #vault_gem_resources tmp matches 1 run scoreboard players operation #lapis_regen_lvl upgrade = #vault_lapis_regen tmp

# 시간 250조각: 정산에서 0으로 초기화한 뒤 이전 채굴 도구 강화 단계를 복원한다.
execute if score #vault_tool tmp matches 1 run scoreboard players operation #tool upgrade = #vault_tool_level tmp

# 시간 보관소 10조각 이상 보정은 상점·도구 보관 효과를 모두 복원한 뒤 적용한다.
execute if score #time_bank meta matches 10.. run function reckoning/vault/apply_ancient_start

# clear로 사라진 채굴 도구를 최종 강화 단계에 맞춰 다시 발급한다.
function tool/refresh_all

# 자동 인출은 한 번 달성하면 영구 유지한다.
execute if score #information_bank meta matches 1000.. run scoreboard players set #information_auto_withdraw meta 1
execute if score #time_bank meta matches 500.. run scoreboard players set #time_auto_withdraw meta 1

# 발전과제 보상 복원
execute if score #vault_reward_wood tmp matches 1.. run function resource/advancement_reward/wood/enable
execute if score #vault_reward_stone tmp matches 1.. run function resource/advancement_reward/stone/enable
execute if score #vault_reward_coal tmp matches 1.. run function resource/advancement_reward/coal/enable
execute if score #vault_reward_copper tmp matches 1.. run function resource/advancement_reward/copper/enable
execute if score #vault_reward_iron tmp matches 1.. run function resource/advancement_reward/iron/enable
execute if score #vault_reward_lapis tmp matches 1.. run function resource/advancement_reward/lapis/enable
function shop/third/update_capacities
function meta/sync
