# tmp.cost 의 목록에 있는 자원 요구 목록만큼 자원을 차감
# 특수 콘텐츠가 직접 요청한 기존 전체 대체 경로를 유지한다.
execute if score #obsidian_cost_bypass tmp matches 1 if score #obsidian_substitution_count tmp matches 0 run return run function resource/cost/take_obsidian_bypass
# resource/check_cost가 준비한 정상/부분 대체 비용을 그대로 차감한다.
execute if score #cost_prepared tmp matches 1 run return run function resource/cost/take_prepared

scoreboard players set #cost_wood cost 0
scoreboard players set #cost_stone cost 0
scoreboard players set #cost_coal cost 0
scoreboard players set #cost_copper cost 0
scoreboard players set #cost_iron cost 0
scoreboard players set #cost_diamond cost 0
scoreboard players set #cost_emerald cost 0
scoreboard players set #cost_lapis cost 0
scoreboard players set #cost_heat cost 0
scoreboard players set #cost_cold cost 0
scoreboard players set #cost_information cost 0
scoreboard players set #cost_time cost 0
scoreboard players set #cost_obsidian cost 0
scoreboard players set #cost_gold cost 0

execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
execute if data storage data tmp.cost[{type:"coal"}].amount store result score #cost_coal cost run data get storage data tmp.cost[{type:"coal"}].amount
execute if data storage data tmp.cost[{type:"copper"}].amount store result score #cost_copper cost run data get storage data tmp.cost[{type:"copper"}].amount
execute if data storage data tmp.cost[{type:"iron"}].amount store result score #cost_iron cost run data get storage data tmp.cost[{type:"iron"}].amount
execute if data storage data tmp.cost[{type:"diamond"}].amount store result score #cost_diamond cost run data get storage data tmp.cost[{type:"diamond"}].amount
execute if data storage data tmp.cost[{type:"emerald"}].amount store result score #cost_emerald cost run data get storage data tmp.cost[{type:"emerald"}].amount
execute if data storage data tmp.cost[{type:"lapis"}].amount store result score #cost_lapis cost run data get storage data tmp.cost[{type:"lapis"}].amount
execute if data storage data tmp.cost[{type:"heat"}].amount store result score #cost_heat cost run data get storage data tmp.cost[{type:"heat"}].amount
execute if data storage data tmp.cost[{type:"cold"}].amount store result score #cost_cold cost run data get storage data tmp.cost[{type:"cold"}].amount
execute if data storage data tmp.cost[{type:"information"}].amount store result score #cost_information cost run data get storage data tmp.cost[{type:"information"}].amount
execute if data storage data tmp.cost[{type:"time"}].amount store result score #cost_time cost run data get storage data tmp.cost[{type:"time"}].amount
execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_gold cost run data get storage data tmp.cost[{type:"gold"}].amount

scoreboard players operation #wood material -= #cost_wood cost
scoreboard players operation #stone material -= #cost_stone cost
scoreboard players operation #coal material -= #cost_coal cost
scoreboard players operation #copper material -= #cost_copper cost
scoreboard players operation #iron material -= #cost_iron cost
scoreboard players operation #diamond material -= #cost_diamond cost
scoreboard players operation #emerald material -= #cost_emerald cost
scoreboard players operation #lapis material -= #cost_lapis cost
scoreboard players operation #heat material -= #cost_heat cost
scoreboard players operation #cold material -= #cost_cold cost
function meta/information/take_cost
function meta/time/take_cost
function meta/obsidian/take_cost
scoreboard players operation #gold material -= #cost_gold cost

scoreboard players set #obsidian_cost_bypass tmp 0
scoreboard players set #obsidian_substitution_count tmp 0
scoreboard players set #cost_prepared tmp 0
