# 입자가속기 건설 직전의 정상적인 현대 진행 상태를 구성한다.
# 실행 명령: /function test/pre_accelerator

# 플레이어를 정상 플레이 위치로 복귀시킨다.
execute in minecraft:overworld run tp @s 0.5 -58 0.5 180 0
gamemode adventure @s
tag @s add player

# 현대까지의 일반 자원과 문명 진행도.
scoreboard players set #wood unlock 1
scoreboard players set #stone unlock 1
scoreboard players set #coal unlock 1
scoreboard players set #copper unlock 1
scoreboard players set #iron unlock 1
scoreboard players set #gold unlock 1
scoreboard players set #diamond unlock 1
scoreboard players set #emerald unlock 1
scoreboard players set #lapis unlock 1
scoreboard players set #overworld civilization_age 8

advancement grant @s only 0_overworld/00_root
advancement grant @s only 0_overworld/10_wood_age
advancement grant @s only 0_overworld/11_stone_age
advancement grant @s only 0_overworld/12_bronze_age
advancement grant @s only 0_overworld/13_iron_age
advancement grant @s only 0_overworld/14_ancient_age
advancement grant @s only 0_overworld/15_medieval_age
advancement grant @s only 0_overworld/16_modern_age
advancement grant @s only 0_overworld/23_factory
advancement grant @s only 0_overworld/17_contemporary_age

# 공장은 건설 완료 상태이며, 현대 진입 조건인 네 자동화만 기본 단계로 해금한다.
scoreboard players set #GLOBAL factory_build_stage 1
scoreboard players set #GLOBAL factory_elevator_unlocked 0
scoreboard players set #factory_recycle_level upgrade 0
scoreboard players set #factory_energy_level upgrade 0
scoreboard players set #wood factory_unlocked 0
scoreboard players set #stone factory_unlocked 0
scoreboard players set #coal factory_unlocked 0
scoreboard players set #copper factory_unlocked 0
scoreboard players set #iron factory_unlocked 0
scoreboard players set #gold factory_unlocked 0
scoreboard players set #diamond factory_unlocked 0
scoreboard players set #emerald factory_unlocked 0
scoreboard players set #lapis factory_unlocked 0
scoreboard players set #heat factory_unlocked 0
scoreboard players set #cold factory_unlocked 0
scoreboard players set #wood factory_unlocked 1
scoreboard players set #stone factory_unlocked 1
scoreboard players set #coal factory_unlocked 1
scoreboard players set #copper factory_unlocked 1
scoreboard players set #wood factory_level 0
scoreboard players set #stone factory_level 0
scoreboard players set #coal factory_level 0
scoreboard players set #copper factory_level 0
scoreboard players set #iron factory_level 0
scoreboard players set #gold factory_level 0
scoreboard players set #diamond factory_level 0
scoreboard players set #emerald factory_level 0
scoreboard players set #lapis factory_level 0
scoreboard players set #heat factory_level 0
scoreboard players set #cold factory_level 0
scoreboard players set #wood factory_enabled 0
scoreboard players set #stone factory_enabled 0
scoreboard players set #coal factory_enabled 0
scoreboard players set #copper factory_enabled 0
scoreboard players set #iron factory_enabled 0
scoreboard players set #gold factory_enabled 0
scoreboard players set #diamond factory_enabled 0
scoreboard players set #emerald factory_enabled 0
scoreboard players set #lapis factory_enabled 0
scoreboard players set #heat factory_enabled 0
scoreboard players set #cold factory_enabled 0
function common/structure/factory/on
function factory/init_state
function factory/chunk_load/sync

# 입자가속기·실험·고장·외계 자원·타임머신은 모두 시작 전 상태로 되돌린다.
scoreboard players set #GLOBAL accelerator_level 0
scoreboard players set #GLOBAL accelerator_timer 1200
scoreboard players set #GLOBAL experiment_cooldown 0
scoreboard players set #GLOBAL accelerator_disabled 0
scoreboard players set #GLOBAL accelerator_repair_timer 0
scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200
scoreboard players set #GLOBAL shield_charge 0
scoreboard players set #GLOBAL shield_maintenance 6000
scoreboard players set #color_resources_unlocked var 0
scoreboard players set #spacetime_experiment_done var 0
scoreboard players set #experiment_mode tmp 0
scoreboard players set #GLOBAL time_machine_level 0
scoreboard players set #time_machine_yellow upgrade 0
scoreboard players set #time_machine_blue upgrade 0
scoreboard players set #time_machine_path_yellow upgrade 0
scoreboard players set #time_machine_path_blue upgrade 0
scoreboard players set #time_machine_path_green upgrade 0
scoreboard players set #time_machine_green_discovered upgrade 0
scoreboard players set #yellow unlock 0
scoreboard players set #blue unlock 0
scoreboard players set #yellow material 0
scoreboard players set #blue material 0
scoreboard players set #iron_advancement_reward var 1
scoreboard players set #yellow_present_prev var 0
scoreboard players set #blue_present_prev var 0
execute in minecraft:overworld run setblock -35 -62 -2 air replace
execute in minecraft:overworld run setblock -35 -62 2 air replace
tag @a remove accelerator_experiment_running
scoreboard players set @a experiment_delay 0
scoreboard players set @a experiment_type 0

advancement revoke @a only 0_overworld/18_future_age
advancement revoke @a only 0_overworld/22_particle_accelerator
advancement revoke @a only 0_overworld/22_heavy_ion_experiment
advancement revoke @a only 0_overworld/24_time_machine
advancement revoke @a only 0_overworld/25_yellow_time_machine
advancement revoke @a only 0_overworld/25_blue_time_machine
advancement revoke @a only 0_overworld/25_green_time_machine
advancement revoke @a only 0_overworld/26_all_general

# 일반 자원은 Material 원장을 정확히 1,000,000으로 설정한다.
scoreboard players set #wood material 1000000
scoreboard players set #stone material 1000000
scoreboard players set #coal material 1000000
scoreboard players set #copper material 1000000
scoreboard players set #iron material 1000000
scoreboard players set #gold material 1000000
scoreboard players set #diamond material 1000000
scoreboard players set #emerald material 1000000
scoreboard players set #lapis material 1000000

# 메타 자원은 실제 아이템/보관 원장을 초기화한 뒤 기존 지급 API로 500을 넣는다.
clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}]
clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}]
clear @s minecraft:paper[minecraft:custom_data~{three_body:{meta:"obsidian"}}]
scoreboard players set #information_bank meta 0
scoreboard players set #time_bank meta 0
scoreboard players set #information_bank_unlocked meta 0
scoreboard players set #time_bank_unlocked meta 0
scoreboard players set #information_storage_lvl upgrade 0
scoreboard players set #time_storage_lvl upgrade 0
function meta/sync
scoreboard players set #material_add_value tmp 500
function meta/information/give
scoreboard players set #material_add_value tmp 500
function meta/time/give
scoreboard players set #material_add_value tmp 500
function meta/obsidian/give
scoreboard players set #catalyst_active_harvest var 0
scoreboard players set #material_add_value tmp 500
function meta/sync

tellraw @s {text:"입자가속기 진입 직전 테스트 상태로 설정했습니다.",color:"green"}
