# Deduct the exact costs populated by resource/check_cost.
# 정상 비용을 충족하지 못해 흑요석 대체가 선택된 경우 다른 재료는 전혀 소모하지 않습니다.
execute if score #obsidian_cost_bypass tmp matches 1 run scoreboard players set #cost_obsidian cost 1
execute if score #obsidian_cost_bypass tmp matches 1 run function meta/obsidian/take_cost
execute if score #obsidian_cost_bypass tmp matches 1 run scoreboard players set #obsidian_cost_bypass tmp 0
execute if score #obsidian_cost_bypass tmp matches 0 run return 1

scoreboard players operation #wood material -= #cost_wood cost
scoreboard players operation #stone material -= #cost_stone cost
scoreboard players operation #coal material -= #cost_coal cost
scoreboard players operation #copper material -= #cost_copper cost
scoreboard players operation #iron material -= #cost_iron cost
scoreboard players operation #diamond material -= #cost_diamond cost
scoreboard players operation #emerald material -= #cost_emerald cost
scoreboard players operation #lapis material -= #cost_lapis cost
scoreboard players operation #gold material -= #cost_gold cost
scoreboard players operation #heat material -= #cost_heat cost
scoreboard players operation #cold material -= #cost_cold cost
scoreboard players operation #yellow material -= #yellow cost
scoreboard players operation #blue material -= #blue cost
function meta/information/take_cost
function meta/time/take_cost
scoreboard players operation #world_eye material -= #cost_world_eye cost
function meta/obsidian/take_cost
scoreboard players set #obsidian_cost_bypass tmp 0
