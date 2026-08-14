execute unless score #iron unlock matches 1.. run return 0
function three_body:resource/iron/value/regen_upgrade_cost
execute store result score #iron_upgrade_has_cost resource_test run function three_body:resource/has with storage three_body:resource.input
execute unless score #iron_upgrade_has_cost resource_test matches 1 run return 0
function three_body:resource/remove with storage three_body:resource.input
execute unless score #resource_remove_success resource_test matches 1 run return 0
scoreboard players add #iron_regen_lvl upgrade 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
