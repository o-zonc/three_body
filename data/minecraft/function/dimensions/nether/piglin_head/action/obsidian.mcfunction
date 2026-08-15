execute if score #trial_active trial matches 1 if score #trial_id trial matches 3 if score #dimension_phase trial matches 2 run return 0
execute unless block -17 1 5 minecraft:obsidian run return 0
execute store result score #obsidian_max_up_value tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_value
execute if score #obsidian material >= #obsidian_max_up_value tmp run return 0
setblock -17 1 5 air destroy
