execute unless block -17 1 5 minecraft:obsidian run return 0
execute if score #obsidian material >= #obsidian_max_up_value tmp run return 0
setblock -17 1 5 air destroy
