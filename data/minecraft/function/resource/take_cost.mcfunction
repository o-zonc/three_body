# tmp.cost 의 목록에 있는 자원 요구 목록만큼 자원을 차감

scoreboard players set #cost_wood cost 0
scoreboard players set #cost_stone cost 0
scoreboard players set #cost_exp_lvl cost 0
scoreboard players set #cost_coal cost 0
scoreboard players set #cost_iron cost 0
scoreboard players set #cost_obsidian cost 0
scoreboard players set #cost_compressed_overworld_crystal cost 0
scoreboard players set #cost_compressed_nether_crystal cost 0
scoreboard players set #cost_quartz cost 0
scoreboard players set #cost_gold cost 0
scoreboard players set #cost_blaze_powder cost 0
scoreboard players set #cost_trial_crystal cost 0
scoreboard players set #cost_spirit cost 0

execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
execute if data storage data tmp.cost[{type:"exp_lvl"}].amount store result score #cost_exp_lvl cost run data get storage data tmp.cost[{type:"exp_lvl"}].amount
execute if data storage data tmp.cost[{type:"coal"}].amount store result score #cost_coal cost run data get storage data tmp.cost[{type:"coal"}].amount
execute if data storage data tmp.cost[{type:"iron"}].amount store result score #cost_iron cost run data get storage data tmp.cost[{type:"iron"}].amount
execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
execute if data storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount store result score #cost_compressed_overworld_crystal cost run data get storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount
execute if data storage data tmp.cost[{type:"compressed_nether_crystal"}].amount store result score #cost_compressed_nether_crystal cost run data get storage data tmp.cost[{type:"compressed_nether_crystal"}].amount
execute if data storage data tmp.cost[{type:"quartz"}].amount store result score #cost_quartz cost run data get storage data tmp.cost[{type:"quartz"}].amount
execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_gold cost run data get storage data tmp.cost[{type:"gold"}].amount
execute if data storage data tmp.cost[{type:"blaze_powder"}].amount store result score #cost_blaze_powder cost run data get storage data tmp.cost[{type:"blaze_powder"}].amount
execute if data storage data tmp.cost[{type:"trial_crystal"}].amount store result score #cost_trial_crystal cost run data get storage data tmp.cost[{type:"trial_crystal"}].amount
execute if data storage data tmp.cost[{type:"spirit"}].amount store result score #cost_spirit cost run data get storage data tmp.cost[{type:"spirit"}].amount

scoreboard players set #2_1_cost_effective tmp 0
execute if score #2_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players set #2_1_cost_effective tmp 1
execute if score #2_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players set #2_1_cost_effective tmp 1
execute if score #2_1 nether_workshop matches 1 if score #trial_active trial matches 1 if score #trial_1 advancement matches 1 unless score #trial_advancement_reward_disabled var matches 1 run scoreboard players set #2_1_cost_effective tmp 1

# 발전과제 overworld_13 달성 시 나무/돌은 차감되지 않음
execute unless score #overworld_13 advancement matches 1 run scoreboard players operation #wood material -= #cost_wood cost
execute if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #wood material -= #cost_wood cost
execute unless score #overworld_13 advancement matches 1 run scoreboard players operation #stone material -= #cost_stone cost
execute if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #stone material -= #cost_stone cost
execute unless score #2_1_cost_effective tmp matches 1 run scoreboard players operation #coal material -= #cost_coal cost
scoreboard players operation #iron material -= #cost_iron cost
scoreboard players operation #obsidian material -= #cost_obsidian cost
scoreboard players operation #compressed_overworld_crystal material -= #cost_compressed_overworld_crystal cost
scoreboard players operation #compressed_nether_crystal material -= #cost_compressed_nether_crystal cost
scoreboard players operation #quartz material -= #cost_quartz cost
execute unless score #2_1_cost_effective tmp matches 1 run scoreboard players operation #gold material -= #cost_gold cost
scoreboard players operation #blaze_powder material -= #cost_blaze_powder cost
scoreboard players operation #trial_crystal material -= #cost_trial_crystal cost
scoreboard players operation #spirit material -= #cost_spirit cost


# 벨티아 시련: 실제 소모된 오버월드 자원만 평온으로 반영
scoreboard players set #emotion_delta tmp 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #overworld_13 advancement matches 1 run scoreboard players operation #emotion_delta tmp += #cost_wood cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #emotion_delta tmp += #cost_wood cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #overworld_13 advancement matches 1 run scoreboard players operation #emotion_cost_add tmp = #cost_stone cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #overworld_13 advancement matches 1 run scoreboard players set #emotion_cost_weight tmp 2
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #overworld_13 advancement matches 1 run scoreboard players operation #emotion_cost_add tmp *= #emotion_cost_weight tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #overworld_13 advancement matches 1 run scoreboard players operation #emotion_delta tmp += #emotion_cost_add tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #emotion_cost_add tmp = #cost_stone cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #emotion_cost_weight tmp 2
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #emotion_cost_add tmp *= #emotion_cost_weight tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 if score #overworld_13 advancement matches 1 if score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #emotion_delta tmp += #emotion_cost_add tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #2_1_cost_effective tmp matches 1 run scoreboard players operation #emotion_cost_add tmp = #cost_coal cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #2_1_cost_effective tmp matches 1 run scoreboard players set #emotion_cost_weight tmp 8
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #2_1_cost_effective tmp matches 1 run scoreboard players operation #emotion_cost_add tmp *= #emotion_cost_weight tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 unless score #2_1_cost_effective tmp matches 1 run scoreboard players operation #emotion_delta tmp += #emotion_cost_add tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_cost_add tmp = #cost_iron cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players set #emotion_cost_weight tmp 20
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_cost_add tmp *= #emotion_cost_weight tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_delta tmp += #emotion_cost_add tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_cost_add tmp = #cost_obsidian cost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players set #emotion_cost_weight tmp 80
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_cost_add tmp *= #emotion_cost_weight tmp
execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run scoreboard players operation #emotion_delta tmp += #emotion_cost_add tmp
# execute if score #trial_active trial matches 1 if score #trial_id trial matches 2 run function trial/emotion/add_calm
# 경험치는 개별
scoreboard players set #minus tmp -1
scoreboard players operation #reverse_exp_lvl tmp = #cost_exp_lvl cost
scoreboard players operation #reverse_exp_lvl tmp *= #minus tmp
execute store result storage data tmp.exp_lvl.lvl int 1 run scoreboard players get #reverse_exp_lvl tmp
function player/add_exp_lvl with storage data tmp.exp_lvl
