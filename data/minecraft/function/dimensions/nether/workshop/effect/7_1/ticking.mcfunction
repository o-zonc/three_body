execute unless score #obsidian_storage_amount var = #obsidian_storage_amount var run scoreboard players set #obsidian_storage_amount var 0
function dimensions/nether/obsidian_storage/value/max_capacity
execute if score #obsidian_storage_amount var > #obsidian_storage_capacity tmp run scoreboard players operation #obsidian_storage_amount var = #obsidian_storage_capacity tmp
execute if score #obsidian_storage_amount var >= #obsidian_storage_capacity tmp run return 0
execute unless score #obsidian material matches 1.. run return 0

scoreboard players remove #obsidian material 1
scoreboard players add #obsidian_storage_amount var 1
function dimensions/nether/obsidian_storage/update_milestone
function resource/overworld/obsidian/lock/update
return 1
