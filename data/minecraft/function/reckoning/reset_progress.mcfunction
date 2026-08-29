# 자원 상점 3층과 meta 보관소는 의도적으로 건드리지 않는다.
# 발전과제 보상(var의 *_advancement_reward)도 문명 정산에서 초기화하지 않는다.
# #broken_quantum_storage var는 시공간의 틈에 보관된 영구 자원으로 문명 정산에서 유지한다.
clear @a

# 문명 정산에서는 일반 자원 보유량을 항상 0으로 초기화한다.
# 와일드카드에만 의존하지 않고 실제 Material score holder를 명시적으로 초기화한다.
scoreboard players set #wood material 0
scoreboard players set #stone material 0
scoreboard players set #coal material 0
scoreboard players set #copper material 0
scoreboard players set #iron material 0
scoreboard players set #gold material 0
scoreboard players set #diamond material 0
scoreboard players set #emerald material 0
scoreboard players set #lapis material 0
scoreboard players set #heat material 0
scoreboard players set #cold material 0
scoreboard players set #yellow material 0
scoreboard players set #blue material 0
scoreboard players set #world_eye material 0
scoreboard players set #information material 0
scoreboard players set #time material 0
scoreboard players set #obsidian material 0

scoreboard players set * unlock 0
scoreboard players set * material_shop 0

# 영구 이동기 구매 기록은 연금술 공방과 무관하게 문명 정산을 통과합니다.
# 차원 이동기는 즉시 복원하고, 오버월드 전용인 상점·공방 이동기는
# 오버월드 복귀 시 mover/local/restore에서 제단 이동기와 함께 재지급합니다.
execute if score #vault_dimension_mover_owned tmp matches 1 run scoreboard players set #dimension_mover unlock 1
execute if score #vault_shop_mover_owned tmp matches 1 run scoreboard players set #shop_mover unlock 1
execute if score #vault_alchemy_mover_owned tmp matches 1 run scoreboard players set #alchemy_mover unlock 1
execute if score #vault_dimension_mover_owned tmp matches 1 as @a run function item/give/dimension_mover

# 중입자 충돌에서 발견한 노랑/파랑은 발전과제 기록과 재생성 업그레이드를 다음 문명으로 계승한다.
# 보유량은 위 material 초기화에 포함되지만, 노드는 새 문명 시작과 함께 즉시 다시 사용할 수 있다.
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #yellow unlock 1
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] run scoreboard players set #blue unlock 1
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] in overworld run function resource/material/yellow/place
execute if entity @a[advancements={0_overworld/22_heavy_ion_experiment=true}] in overworld run function resource/material/blue/place

# 3층 업그레이드를 보존하기 위해 upgrade는 명시적으로 초기화한다.
# yellow/blue regen 업그레이드는 의도적으로 이 목록에서 제외해 순환 가속 요소로 유지한다.
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
scoreboard players set #stronghold_overworld upgrade 0
scoreboard players set #stronghold_frozen upgrade 0
scoreboard players set #stronghold_dried upgrade 0
execute in minecraft:dried run setblock 18 65 -6 air
execute in minecraft:dried run setblock 12 65 0 air
execute in minecraft:dried run setblock 18 65 6 air
execute in minecraft:dried run setblock 18 66 -6 air
execute in minecraft:dried run setblock 12 66 0 air
execute in minecraft:dried run setblock 18 66 6 air
scoreboard players set #alchemy_lab_level upgrade 0

# 세공 작업대의 작동 상태는 문명마다 새로 시작한다.
scoreboard players set #jewel_auto_enabled var 0
scoreboard players set #jewel_auto_timer var 0
scoreboard players set #jewel_cooldown var 0
scoreboard players set #jewel_particle_timer var 0

# 미래 진입에 필요한 시공간 붕괴 실험 기록은 문명마다 새로 달성해야 한다.
scoreboard players set #spacetime_experiment_done var 0

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
scoreboard players set #factory_recycle_level upgrade 0
scoreboard players set #factory_energy_level upgrade 0

# 입자가속기/외계 간섭/보호막은 문명마다 새로 시작한다.
scoreboard players set #GLOBAL accelerator_level 0
scoreboard players set #GLOBAL accelerator_timer 1200
scoreboard players set #GLOBAL experiment_cooldown 0
scoreboard players set #GLOBAL alien_interference 0
scoreboard players set #GLOBAL alien_timer 1200
scoreboard players set #GLOBAL shield_charge 0
scoreboard players set #GLOBAL shield_maintenance 6000
bossbar set shield_charge visible false

# 타임머신 세대와 노랑/파랑 연구도 문명마다 새로 시작한다.
function time_machine/reset

# 정산 및 여명 보너스는 다음 문명에서 다시 판정한다.
scoreboard players set #GLOBAL reckoning_ready 0
scoreboard players set #GLOBAL dawn_bonus_shop 0
scoreboard players set #GLOBAL dawn_information_shop 0
scoreboard players set #GLOBAL dawn_time_shop 0
scoreboard players set #GLOBAL dawn_reactor_purchased 0

scoreboard players set #frozen_shop unlock 0
scoreboard players set #frozen_bridge unlock 0
scoreboard players set #frozen_maze unlock 0
scoreboard players set #frozen_maze_active var 0
scoreboard players set #frozen_maze_cleared var 0
scoreboard players set #frozen_maze_claimed var 0
scoreboard players set #frozen_maze_started var 0
bossbar set bossbar_frozen_maze visible false

function common/structure/observatory/off
function common/structure/beacon/off
function common/structure/alchemy_workshop/off
function common/structure/factory/off

function dried/structure/sulfur/off
function dried/structure/cinnabar/off

function frozen/structure/shop/off
function frozen/structure/bridge/off
function frozen/structure/maze/off

# 원자로는 문명마다 다시 제작하되, 영구 증폭기의 진행도와 색유리는 유지합니다.
function dawn/reactor/off
