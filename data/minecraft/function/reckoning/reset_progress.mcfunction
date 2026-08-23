# 자원 상점 3층과 meta 보관소는 의도적으로 건드리지 않는다.
# 발전과제 보상(var의 *_advancement_reward)도 문명 정산에서 초기화하지 않는다.
# #broken_quantum_storage var는 시공간의 틈에 보관된 영구 자원으로 문명 정산에서 유지한다.
clear @a
scoreboard players set * material 0
scoreboard players set * unlock 0
scoreboard players set * material_shop 0

# 3층 업그레이드를 보존하기 위해 upgrade는 명시적으로 초기화한다.
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
scoreboard players set #heat_second_lvl upgrade 0
scoreboard players set #cold_second_lvl upgrade 0
scoreboard players set #gold_second_lvl upgrade 0
scoreboard players set #diamond_second_lvl upgrade 0
scoreboard players set #special_second_lvl upgrade 0
scoreboard players set #get_second_lvl upgrade 0
scoreboard players set #dried_relic_level upgrade 0
scoreboard players set #alchemy_lab_level upgrade 0

# 세공 작업대의 작동 상태는 문명마다 새로 시작한다.
scoreboard players set #jewel_auto_enabled var 0
scoreboard players set #jewel_auto_timer var 0
scoreboard players set #jewel_cooldown var 0
scoreboard players set #jewel_particle_timer var 0

# 문명별 생산/시설 타이머는 새 문명의 기본값으로 되돌린다.
scoreboard players set #heat_environment_timer generate 1200
scoreboard players set #cold_environment_timer generate 1200
scoreboard players set #dried_relic_timer generate 1200

scoreboard players set #overworld civilization_age 0
scoreboard players set #level alchemy_workshop 0
scoreboard players set #alchemy_workshop unlock 0
scoreboard players set #era unlock 0
scoreboard players set #GLOBAL elevator_unlocked 0
scoreboard players set #GLOBAL factory_elevator_unlocked 0
scoreboard players set #GLOBAL factory_build_stage 0
function factory/reset_state

# 입자가속기/외계 간섭/보호막은 문명마다 새로 시작한다.
scoreboard players set #GLOBAL accelerator_level 0
scoreboard players set #GLOBAL accelerator_timer 1200
scoreboard players set #GLOBAL experiment_cooldown 0
scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200
scoreboard players set #GLOBAL shield_charge 0
scoreboard players set #GLOBAL shield_maintenance 6000
bossbar set shield_charge visible false

scoreboard players set #GLOBAL time_machine_level 0

# 정산 및 여명 보너스는 다음 문명에서 다시 판정한다.
scoreboard players set #GLOBAL reckoning_ready 0
scoreboard players set #GLOBAL dawn_bonus_shop 0
scoreboard players set #GLOBAL dawn_information_shop 0
scoreboard players set #GLOBAL dawn_time_shop 0
scoreboard players set #GLOBAL dawn_reactor_purchased 0

scoreboard players set #frozen_shop unlock 0
scoreboard players set #frozen_bridge unlock 0
scoreboard players set #frozen_maze unlock 0

function common/structure/observatory/off
function common/structure/alchemy_workshop/off
function common/structure/factory/off

function frozen/structure/shop/off
function frozen/structure/bridge/off
function frozen/structure/maze/off
