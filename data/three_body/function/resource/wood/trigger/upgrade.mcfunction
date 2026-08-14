# Upgrade wood regeneration.
execute unless score #wood unlock matches 1.. run return fail

# Ask the resource API for the next configured regeneration level's cost.
function three_body:resource/wood/value/regen_upgrade_cost

# No configured next level means the current level is the maximum.
execute unless data storage three_body:resource.temp cost run return fail

# Abort when the required wood is not available.
execute store result score #wood_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #wood_upgrade_has_cost resource_test matches 1 run return fail

# Pay the cost.
function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return fail

# Increase regeneration level.
scoreboard players add #wood_regen_lvl upgrade 1

# Feedback.
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
