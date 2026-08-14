# Upgrade coal regeneration.
execute unless score #coal unlock matches 1.. run return fail

# Ask the resource API for the next configured regeneration level's cost.
function three_body:resource/coal/value/regen_upgrade_cost
execute unless data storage three_body:resource.temp cost run return fail

# Abort when the required coal is not available.
execute store result score #coal_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #coal_upgrade_has_cost resource_test matches 1 run return fail

# Pay the cost.
function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return fail

scoreboard players add #coal_regen_lvl upgrade 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
