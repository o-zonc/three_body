# Upgrade lapis regeneration.
execute unless score #lapis unlock matches 1.. run return fail

function three_body:resource/lapis/value/regen_upgrade_cost
execute unless data storage three_body:resource.temp cost run return fail

execute store result score #lapis_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #lapis_upgrade_has_cost resource_test matches 1 run return fail

function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return fail

scoreboard players add #lapis_regen_lvl upgrade 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
