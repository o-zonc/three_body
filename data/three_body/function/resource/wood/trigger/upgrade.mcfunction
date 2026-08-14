# Upgrade wood regeneration.
execute unless score #wood unlock matches 1.. run return 0

# The config list is the source of truth for the maximum level.
scoreboard players reset #wood_regen_count tmp
scoreboard players reset #wood_regen_next tmp
execute store result score #wood_regen_count tmp run data get storage three_body:resource.config.wood.regen
execute store result score #wood_regen_next tmp run scoreboard players get #wood_regen_lvl upgrade
scoreboard players add #wood_regen_next tmp 1
execute if score #wood_regen_next tmp >= #wood_regen_count tmp run return 0

# Prepare the next-level cost in the Material API input storage.
function three_body:resource/wood/value/regen_upgrade_cost

# Abort when the required wood is not available.
execute store result score #wood_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #wood_upgrade_has_cost resource_test matches 1 run return 0

# Pay the cost.
function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return 0

# Increase regeneration level.
scoreboard players add #wood_regen_lvl upgrade 1

# Feedback.
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
