# Deduct the exact costs populated by product/check_cost.
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
scoreboard players operation #world_eye material -= #cost_world_eye cost
scoreboard players operation #obsidian material -= #cost_obsidian cost
scoreboard players operation #quartz material -= #cost_quartz cost
scoreboard players operation #gold material -= #cost_gold cost
scoreboard players operation #blaze_powder material -= #cost_blaze_powder cost
execute if score #cost_exp_lvl cost matches 1.. store result storage data tmp.resource.exp.lvl int -1 run scoreboard players get #cost_exp_lvl cost
execute if data storage data tmp.resource.exp.lvl run function player/add_exp_lvl with storage data tmp.resource.exp
data remove storage data tmp.resource.exp
