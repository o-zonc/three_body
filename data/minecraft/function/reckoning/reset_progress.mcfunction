# 자원 상점 3층과 meta 보관소는 의도적으로 건드리지 않는다.
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

scoreboard players set #overworld civilization_age 0
scoreboard players set #level alchemy_workshop 0
scoreboard players set #alchemy_workshop unlock 0
scoreboard players set #era unlock 0
scoreboard players set #GLOBAL elevator_unlocked 0
scoreboard players set #GLOBAL factory_elevator_unlocked 0
scoreboard players set #GLOBAL factory_build_stage 0
scoreboard players reset * factory_level
scoreboard players reset * factory_unlocked
scoreboard players reset * factory_enabled
scoreboard players reset * factory_timer
scoreboard players reset * factory_status
scoreboard players set #GLOBAL accelerator_level 0
scoreboard players set #GLOBAL accelerator_timer 1200
scoreboard players set #GLOBAL time_machine_level 0

scoreboard players set #frozen_shop unlock 0
scoreboard players set #frozen_bridge unlock 0
scoreboard players set #frozen_maze unlock 0

function common/structure/observatory/off
function common/structure/alchemy_workshop/off
function common/structure/factory/off

function frozen/structure/shop/off
function frozen/structure/bridge/off
function frozen/structure/maze/off