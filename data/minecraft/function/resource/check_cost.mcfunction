# tmp.cost 의 목록에 있는 자원 요구 목록만큼 자원을 보유 중이면 1을, 그렇지 않으면 0을 반환

scoreboard players reset * cost

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
execute if data storage data tmp.cost[{type:"spirit"}].amount store result score #cost_spirit cost run data get storage data tmp.cost[{type:"spirit"}].amount

# 경험치는 개별
execute store result score #exp_lvl tmp run xp query @s levels

execute unless score #wood material >= #cost_wood cost run return 0
execute unless score #stone material >= #cost_stone cost run return 0
execute unless score #exp_lvl tmp >= #cost_exp_lvl cost run return 0
execute unless score #coal material >= #cost_coal cost run return 0
execute unless score #iron material >= #cost_iron cost run return 0
execute unless score #obsidian material >= #cost_obsidian cost run return 0
execute unless score #compressed_overworld_crystal material >= #cost_compressed_overworld_crystal cost run return 0
execute unless score #compressed_nether_crystal material >= #cost_compressed_nether_crystal cost run return 0
execute unless score #quartz material >= #cost_quartz cost run return 0
execute unless score #gold material >= #cost_gold cost run return 0
execute unless score #blaze_powder material >= #cost_blaze_powder cost run return 0
execute unless score #spirit material >= #cost_spirit cost run return 0

return 1
