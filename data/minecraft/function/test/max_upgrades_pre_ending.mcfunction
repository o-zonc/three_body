# 모든 해금과 업그레이드를 엔딩 직전의 최대 테스트 상태로 설정합니다.
# /function test/max_upgrades_pre_ending

# 자원 및 시설 해금
scoreboard players set #wood unlock 1
scoreboard players set #stone unlock 1
scoreboard players set #coal unlock 1
scoreboard players set #copper unlock 1
scoreboard players set #iron unlock 1
scoreboard players set #gold unlock 1
scoreboard players set #diamond unlock 1
scoreboard players set #emerald unlock 1
scoreboard players set #lapis unlock 1
scoreboard players set #heat unlock 1
scoreboard players set #cold unlock 1
scoreboard players set #yellow unlock 1
scoreboard players set #blue unlock 1
scoreboard players set #world_eye unlock 1
scoreboard players set #nether unlock 1
scoreboard players set #cave unlock 1
scoreboard players set #mob unlock 1
scoreboard players set #area_zone unlock 1
scoreboard players set #era unlock 1
scoreboard players set #3rd_area unlock 1
scoreboard players set #dried_cinnabar unlock 1
scoreboard players set #dried_sulfur unlock 1
scoreboard players set #dried_relic unlock 1
scoreboard players set #frozen_bridge unlock 1
scoreboard players set #frozen_maze unlock 1
scoreboard players set #frozen_shop unlock 1
scoreboard players set #observatory unlock 1
scoreboard players set #alchemy_workshop unlock 1
scoreboard players set #dimension_mover unlock 1
scoreboard players set #shop_mover unlock 1
scoreboard players set #alchemy_mover unlock 1
scoreboard players set #overworld civilization_age 9
scoreboard players set #level alchemy_workshop 2
scoreboard players set #GLOBAL elevator_unlocked 2

# 영구 이동기는 해금 상태뿐 아니라 실제 아이템도 지급합니다.
execute as @a run function item/give/dimension_mover
execute as @a run function item/give/shop_mover
execute as @a run function item/give/alchemy_mover

# 해금된 구조물을 실제 월드에도 설치합니다. 각 함수는 필요한 청크를 비동기로 불러옵니다.
function common/structure/alchemy_workshop/on
function common/structure/beacon/on
function common/structure/factory/on
function common/structure/observatory/on
function dried/structure/sulfur/on
function dried/structure/cinnabar/on
function frozen/structure/shop/on
function frozen/structure/bridge/on
function frozen/structure/maze/on
function polarnight/structure/vault/on

# 자원 재생산 업그레이드
scoreboard players set #wood_regen_lvl upgrade 4
scoreboard players set #stone_regen_lvl upgrade 5
scoreboard players set #coal_regen_lvl upgrade 4
scoreboard players set #copper_regen_lvl upgrade 4
scoreboard players set #iron_regen_lvl upgrade 4
scoreboard players set #gold_regen_lvl upgrade 4
scoreboard players set #diamond_regen_lvl upgrade 4
scoreboard players set #emerald_regen_lvl upgrade 4
scoreboard players set #lapis_regen_lvl upgrade 4
scoreboard players set #yellow_regen_lvl upgrade 4
scoreboard players set #blue_regen_lvl upgrade 4

# 자원 상점, 도구, 유적지
scoreboard players set #heat_second_lvl upgrade 4
scoreboard players set #cold_second_lvl upgrade 4
scoreboard players set #gold_second_lvl upgrade 4
scoreboard players set #diamond_second_lvl upgrade 4
scoreboard players set #special_second_lvl upgrade 4
scoreboard players set #get_second_lvl upgrade 4
scoreboard players set #tool upgrade 12
scoreboard players set #dried_relic_level upgrade 5
scoreboard players set #stronghold_overworld upgrade 1
scoreboard players set #stronghold_frozen upgrade 1
scoreboard players set #stronghold_dried upgrade 1
execute in minecraft:dried run setblock 18 65 -6 minecraft:grass_block
execute in minecraft:dried run setblock 12 65 0 minecraft:packed_ice
execute in minecraft:dried run setblock 18 65 6 minecraft:sandstone

# 3층 상점과 연금술 공방
scoreboard players set #information_storage_lvl upgrade 3
scoreboard players set #time_storage_lvl upgrade 3
scoreboard players set #world_eye_shop_lvl upgrade 3
scoreboard players set #alchemy_lab_level upgrade 15
scoreboard players set #hole_level upgrade 2
function shop/third/update_capacities
function shop/alchemy/lab/rates

# 공장과 후반 시설
scoreboard players set #GLOBAL factory_build_stage 3
scoreboard players set #GLOBAL factory_elevator_unlocked 2
scoreboard players set #factory_recycle_level upgrade 4
scoreboard players set #factory_energy_level upgrade 4
scoreboard players set #GLOBAL accelerator_level 4
scoreboard players set #GLOBAL time_machine_level 4
scoreboard players set #wood factory_level 6
scoreboard players set #stone factory_level 6
scoreboard players set #coal factory_level 6
scoreboard players set #copper factory_level 6
scoreboard players set #iron factory_level 6
scoreboard players set #gold factory_level 6
scoreboard players set #diamond factory_level 6
scoreboard players set #emerald factory_level 6
scoreboard players set #lapis factory_level 6
scoreboard players set #heat factory_level 6
scoreboard players set #cold factory_level 6
function factory/init_state

# 우는 흑요석 저장고도 완전 개방 상태로 맞춥니다.
scoreboard players set #crying_overworld var 1
scoreboard players set #crying_dried var 1
scoreboard players set #crying_frozen var 1
scoreboard players set #crying_dawn var 1
scoreboard players set #crying_count var 4
scoreboard players set #crying_vault_opened var 1
execute as @a run function crying/advancement_sync

# 타임머신의 최종 세 발전과제를 제외한 데이터팩 발전과제를 모두 달성합니다.
function test/grant_advancements_pre_ending

# 시간 연구는 최종 마일스톤 직전까지만 설정하여 엔딩을 발동하지 않습니다.
scoreboard players set #time_machine_yellow upgrade 6
scoreboard players set #time_machine_blue upgrade 5
scoreboard players set #time_machine_path_yellow upgrade 2
scoreboard players set #time_machine_path_blue upgrade 0
scoreboard players set #time_machine_path_green upgrade 0
scoreboard players set #time_machine_green_discovered upgrade 0
function time_machine/calculate

# 이미 본 엔딩 상태가 남아 있더라도 테스트 기준을 엔딩 이전으로 되돌립니다.
schedule clear story/ending/01_answer
schedule clear story/ending/02_epilogue
schedule clear story/ending/03_credits
schedule clear story/ending/04_credit_scroll
schedule clear story/ending/05_return
kill @e[tag=story_ending]
scoreboard players set #ending_credit_tick var 0
tag @a remove ending_seen
tag @a remove ending_active
tag @a remove ending_from_overworld
tag @a remove ending_from_dried
tag @a remove ending_from_frozen
tag @a remove ending_from_polarnight
tag @a remove ending_from_dawn
advancement revoke @a only 0_overworld/25_yellow_time_machine
advancement revoke @a only 0_overworld/25_blue_time_machine
advancement revoke @a only 0_overworld/25_green_time_machine

function meta/obsidian/give_item {amount:128}

tellraw @s {text:"모든 업그레이드를 엔딩 직전 최대 테스트 상태로 설정했습니다.",color:"green"}
