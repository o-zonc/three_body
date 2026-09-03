# Deduct the exact costs populated by resource/check_cost.
# 특수 콘텐츠가 직접 요청한 기존 전체 대체 경로를 유지한다.
execute if score #obsidian_cost_bypass tmp matches 1 if score #obsidian_substitution_count tmp matches 0 run return run function resource/cost/take_obsidian_bypass
# resource/check_cost가 준비한 정상/부분 대체 비용을 그대로 차감한다.
execute if score #cost_prepared tmp matches 1 run return run function resource/cost/take_prepared

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
function meta/obsidian/take_cost
scoreboard players set #obsidian_cost_bypass tmp 0
scoreboard players set #obsidian_substitution_count tmp 0
scoreboard players set #cost_prepared tmp 0
