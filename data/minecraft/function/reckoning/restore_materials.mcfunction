# 세 세계의 유산을 완성한 문명은 정산 전에 보유했던 일반 자원을 여명 진입 시 한 번 복원한다.
execute unless score #GLOBAL current_dim matches 4 run return 0
execute unless score #GLOBAL reckoning_pending matches 1.. run return 0
execute if score #GLOBAL reckoning_materials_restored matches 1.. run return 0
execute unless entity @a[advancements={2_dried/04_three_ruins=true}] run return 0

scoreboard players operation #wood material = #reckoning_wood tmp
scoreboard players operation #stone material = #reckoning_stone tmp
scoreboard players operation #coal material = #reckoning_coal tmp
scoreboard players operation #copper material = #reckoning_copper tmp
scoreboard players operation #iron material = #reckoning_iron tmp
scoreboard players operation #gold material = #reckoning_gold tmp
scoreboard players operation #diamond material = #reckoning_diamond tmp
scoreboard players operation #emerald material = #reckoning_emerald tmp
scoreboard players operation #lapis material = #reckoning_lapis tmp
scoreboard players operation #heat material = #reckoning_heat tmp
scoreboard players operation #cold material = #reckoning_cold tmp
scoreboard players operation #yellow material = #reckoning_yellow tmp
scoreboard players operation #blue material = #reckoning_blue tmp
scoreboard players operation #world_eye material = #reckoning_world_eye tmp

scoreboard players operation #wood unlock = #reckoning_wood_unlock tmp
scoreboard players operation #stone unlock = #reckoning_stone_unlock tmp
scoreboard players operation #coal unlock = #reckoning_coal_unlock tmp
scoreboard players operation #copper unlock = #reckoning_copper_unlock tmp
scoreboard players operation #iron unlock = #reckoning_iron_unlock tmp
scoreboard players operation #gold unlock = #reckoning_gold_unlock tmp
scoreboard players operation #diamond unlock = #reckoning_diamond_unlock tmp
scoreboard players operation #emerald unlock = #reckoning_emerald_unlock tmp
scoreboard players operation #lapis unlock = #reckoning_lapis_unlock tmp
scoreboard players operation #heat unlock = #reckoning_heat_unlock tmp
scoreboard players operation #cold unlock = #reckoning_cold_unlock tmp
# 노랑/파랑은 영구 해금 정책이 먼저 복원한 상태를 다시 잠그지 않습니다.
execute if score #reckoning_yellow_unlock tmp matches 1 run scoreboard players set #yellow unlock 1
execute if score #reckoning_blue_unlock tmp matches 1 run scoreboard players set #blue unlock 1
scoreboard players operation #world_eye unlock = #reckoning_world_eye_unlock tmp

scoreboard players set #GLOBAL reckoning_materials_restored 1
title @a actionbar {"text":"세 세계의 유산이 정산 전의 일반 자원을 복원했습니다.","color":"gold"}
return 1
