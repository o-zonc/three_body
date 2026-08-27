# tmp.cost 의 목록에 있는 자원 요구 목록만큼 자원을 차감
# resource/check_cost가 흑요석 대체 결제를 선택했다면 다른 자원을 건드리지 않고 흑요석 1개만 소모합니다.
execute if score #obsidian_cost_bypass tmp matches 1 run return run function resource/cost/take_obsidian_bypass

scoreboard players set #cost_wood cost 0
scoreboard players set #cost_stone cost 0
scoreboard players set #cost_exp_lvl cost 0
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
scoreboard players set #cost_world_eye cost 0
scoreboard players set #cost_obsidian cost 0
scoreboard players set #cost_gold cost 0

execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
execute if data storage data tmp.cost[{type:"exp_lvl"}].amount store result score #cost_exp_lvl cost run data get storage data tmp.cost[{type:"exp_lvl"}].amount
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
execute if data storage data tmp.cost[{type:"world_eye"}].amount store result score #cost_world_eye cost run data get storage data tmp.cost[{type:"world_eye"}].amount
execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_gold cost run data get storage data tmp.cost[{type:"gold"}].amount

# 발전과제 overworld_13 달성 시 나무/돌은 차감되지 않음
execute unless score #overworld_13 advancement matches 1 run scoreboard players operation #wood material -= #cost_wood cost
execute if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #wood material -= #cost_wood cost
execute unless score #overworld_13 advancement matches 1 run scoreboard players operation #stone material -= #cost_stone cost
execute if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #stone material -= #cost_stone cost
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
scoreboard players operation #world_eye material -= #cost_world_eye cost
function meta/obsidian/take_cost
scoreboard players operation #gold material -= #cost_gold cost

# 경험치는 개별
scoreboard players set #minus tmp -1
scoreboard players operation #reverse_exp_lvl tmp = #cost_exp_lvl cost
scoreboard players operation #reverse_exp_lvl tmp *= #minus tmp
execute store result storage data tmp.exp_lvl.lvl int 1 run scoreboard players get #reverse_exp_lvl tmp
function player/add_exp_lvl with storage data tmp.exp_lvl
scoreboard players set #obsidian_cost_bypass tmp 0
