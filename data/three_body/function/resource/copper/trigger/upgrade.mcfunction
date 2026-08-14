# Upgrade copper regeneration.
execute unless score #copper unlock matches 1.. run return fail

function three_body:resource/copper/value/regen_upgrade_cost
execute unless data storage three_body:resource.temp cost run return fail

execute store result score #copper_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #copper_upgrade_has_cost resource_test matches 1 run return fail

function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return fail

scoreboard players add #copper_regen_lvl upgrade 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
