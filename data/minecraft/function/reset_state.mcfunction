# 3. 초기값 설정 (시작은 모두 항성기, 5분 뒤 첫 판정)
scoreboard players set #GLOBAL state_frozen 0
scoreboard players set #GLOBAL timer_frozen 6000
scoreboard players set #GLOBAL state_dried 0
scoreboard players set #GLOBAL timer_dried 6000
scoreboard players set #GLOBAL state_overworld 0
scoreboard players set #GLOBAL timer_overworld 6000
scoreboard players set #GLOBAL state_polar 0
scoreboard players set #GLOBAL state_dawn 0
scoreboard players set #20_CONSTANT timer_sec 20

# 4. 보스바 설정
bossbar set bossbar_frozen color blue
bossbar set bossbar_frozen style notched_6
bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen max 6000
bossbar set bossbar_dried color yellow
bossbar set bossbar_dried style notched_10
bossbar set bossbar_dried visible false
bossbar set bossbar_dried max 6000
bossbar set bossbar_overworld color green
bossbar set bossbar_overworld style progress
bossbar set bossbar_overworld visible false
bossbar set bossbar_overworld max 6000
bossbar set shield_charge color white
bossbar set shield_charge style progress
bossbar set shield_charge max 216000
bossbar set shield_charge visible false

scoreboard players set #GLOBAL user_disaster 0

# 5. 차원 방문 스코어보드 초기화
scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players set #GLOBAL visited_polar 0
scoreboard players set #GLOBAL first_frozen 0
scoreboard players set #GLOBAL first_dried 0
scoreboard players set #GLOBAL n_civil 1
scoreboard players set #GLOBAL current_dim 0

# 6. 문명 전환 시스템 관리 스코어보드 초기화
scoreboard players set #GLOBAL era_paused 1
scoreboard players set #disaster_running run 0
scoreboard players set #GLOBAL era_observed 0
scoreboard players set #frozen_shop unlock 0
scoreboard players set #frozen_bridge unlock 0
scoreboard players set #frozen_maze unlock 0
scoreboard players set #dried_relic unlock 0
scoreboard players set #dried_relic_level upgrade 0
scoreboard players set #dried_relic_timer generate 1200

# 7. 스토리 관리 스코어보드 초기화
scoreboard players set #done intro 0
scoreboard players set #t intro 0
scoreboard players set #overworld civilization_age 0
scoreboard players set #level alchemy_workshop 0
scoreboard players set #alchemy_workshop unlock 0
scoreboard players set #GLOBAL dawn_bonus_shop 0
scoreboard players set #GLOBAL dawn_information_shop 0
scoreboard players set #GLOBAL dawn_time_shop 0
scoreboard players set #GLOBAL dawn_reactor_purchased 0
# 시간축 개방은 회차 진행에서는 유지되지만, 전체 게임 초기화에서는 다시 잠급니다.
scoreboard players set #time_axis_open var 0

# 우는 흑요석 수집 이벤트는 전체 reset_state에서만 초기화한다.
scoreboard players set #crying_count var 0
scoreboard players set #crying_overworld var 0
scoreboard players set #crying_dried var 0
scoreboard players set #crying_frozen var 0
scoreboard players set #crying_dawn var 0
scoreboard players set #crying_vault_opened var 0
execute in polarnight run kill @e[type=minecraft:end_crystal,tag=crying_obsidian_crystal]
function polarnight/structure/vault/off
execute in minecraft:frozen run setblock 8 67 36 minecraft:obsidian
execute in minecraft:dried run setblock 0 63 0 minecraft:sandstone
function crying/dawn_reset

# 공허의 구멍 진행도와 인벤토리형 흑요석 자원은 전체 초기화에서만 제거한다.
scoreboard players set #hole_level upgrade 0
scoreboard players set #hole_claims var 0
clear @a minecraft:dragon_egg[minecraft:custom_data~{three_body:{meta:"obsidian"}}]

# 8. 자원 스코어보드 초기화
scoreboard players set * material 0
scoreboard players set * upgrade 0
scoreboard players set * unlock 0
scoreboard players set #information_bank meta 0
scoreboard players set #time_bank meta 0
scoreboard players set #information_capacity meta 8
scoreboard players set #time_capacity meta 2
scoreboard players set #information_synced meta 0
scoreboard players set #time_synced meta 0

# 여명 차원의 영구 자원 증폭 진행도는 문명 정산에서는 유지하고 전체 초기화에서만 제거합니다.
scoreboard players set #dawn_overworld_amp meta 0
scoreboard players set #dawn_dried_amp meta 0
scoreboard players set #dawn_frozen_amp meta 0

# 생산 업그레이드 레벨을 명시적으로 초기화
scoreboard players set #wood_regen_lvl upgrade 0
scoreboard players set #stone_regen_lvl upgrade 0
scoreboard players set #coal_regen_lvl upgrade 0
scoreboard players set #copper_regen_lvl upgrade 0
scoreboard players set #iron_regen_lvl upgrade 0
scoreboard players set #gold_regen_lvl upgrade 0
scoreboard players set #diamond_regen_lvl upgrade 0
scoreboard players set #emerald_regen_lvl upgrade 0
scoreboard players set #lapis_regen_lvl upgrade 0
scoreboard players set #tool upgrade 0

# 시대 발전과제 자원 수급량/상점 할인 보상 초기화
function resource/advancement_reward/wood/disable
function resource/advancement_reward/coal/disable
function resource/advancement_reward/copper/disable
function resource/advancement_reward/iron/disable
function resource/advancement_reward/lapis/disable
function resource/advancement_reward/shop_cost/disable

# 자원별 수급량 상점 레벨을 명시적으로 초기화
scoreboard players set #wood_lvl material_shop 0
scoreboard players set #stone_lvl material_shop 0
scoreboard players set #coal_lvl material_shop 0
scoreboard players set #copper_lvl material_shop 0
scoreboard players set #iron_lvl material_shop 0
scoreboard players set #gold_lvl material_shop 0
scoreboard players set #diamond_lvl material_shop 0
scoreboard players set #emerald_lvl material_shop 0
scoreboard players set #lapis_lvl material_shop 0
scoreboard players set #xp_lvl material_shop 0

# 자원 상점 목록 UI의 임시 계산 결과 제거
scoreboard players reset #wood_shop_value tmp
scoreboard players reset #stone_shop_value tmp
scoreboard players reset #coal_shop_value tmp
scoreboard players reset #copper_shop_value tmp
scoreboard players reset #iron_shop_value tmp
scoreboard players reset #gold_shop_value tmp
scoreboard players reset #diamond_shop_value tmp
scoreboard players reset #emerald_shop_value tmp
scoreboard players reset #lapis_shop_value tmp
scoreboard players reset #xp_shop_value tmp
scoreboard players reset #material_shop_cost_check tmp

# 이전 계산 결과와 대기 중인 트리거 제거
scoreboard players set #poss_effective_lvl tmp 0
scoreboard players reset @a upgrade_trigger
scoreboard players reset @a shop_trigger
scoreboard players reset @a unlock_trigger
scoreboard players reset @a local_move_return

scoreboard objectives remove material_display

data remove storage data tmp

# 얼어붙은 차원 시설을 잠긴 상태로 되돌립니다.
execute in minecraft:frozen run function frozen/structure/shop/off
execute in minecraft:frozen run function frozen/structure/bridge/off
execute in minecraft:frozen run function frozen/structure/maze/off

# 9. 엘리베이터 스코어보드 초기화
scoreboard players set #GLOBAL elevator_unlocked 0
scoreboard players set #GLOBAL factory_elevator_unlocked 0
scoreboard players set #GLOBAL factory_build_stage 0
scoreboard players reset * factory_level
scoreboard players reset * factory_unlocked
scoreboard players reset * factory_enabled
scoreboard players reset * factory_timer
scoreboard players reset * factory_status
scoreboard players reset @a factory_trigger
scoreboard players set #GLOBAL accelerator_level 0
scoreboard players set #GLOBAL accelerator_timer 1200
scoreboard players set #GLOBAL experiment_cooldown 0
scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200
scoreboard players set #GLOBAL shield_charge 0
scoreboard players set #GLOBAL shield_maintenance 6000
scoreboard players set #information_auto_withdraw meta 0
scoreboard players set #time_auto_withdraw meta 0
scoreboard players reset @a accelerator_trigger
bossbar set shield_charge visible false

# 타임머신 연구/세대/타이머/트리거를 전체 초기 상태로 되돌립니다.
function time_machine/reset
# 숨겨진 발전과제 자동 채굴 타이머도 새 게임 기준으로 초기화합니다.
scoreboard players set #yellow_auto_mine_timer generate 20
scoreboard players set #blue_auto_mine_timer generate 20

# 특수 환경 자원 지급 주기 초기화
scoreboard players set #heat_environment_timer generate 1200
scoreboard players set #cold_environment_timer generate 1200
scoreboard players set #heat_second_lvl upgrade 0
scoreboard players set #cold_second_lvl upgrade 0
scoreboard players set #gold_second_lvl upgrade 0
scoreboard players set #diamond_second_lvl upgrade 0
scoreboard players set #special_second_lvl upgrade 0
scoreboard players set #get_second_lvl upgrade 0

# 10. 아이템 드롭 방지
gamerule block_drops false