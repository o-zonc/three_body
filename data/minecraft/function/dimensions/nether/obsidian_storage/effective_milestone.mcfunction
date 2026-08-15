execute unless score #obsidian_storage_amount var = #obsidian_storage_amount var run scoreboard players set #obsidian_storage_amount var 0
execute unless score #obsidian_storage_milestone var = #obsidian_storage_milestone var run scoreboard players set #obsidian_storage_milestone var 0
function dimensions/nether/obsidian_storage/value/max_capacity
execute if score #obsidian_storage_amount var > #obsidian_storage_capacity tmp run scoreboard players operation #obsidian_storage_amount var = #obsidian_storage_capacity tmp
execute if score #obsidian_storage_amount var > #obsidian_storage_milestone var run scoreboard players operation #obsidian_storage_milestone var = #obsidian_storage_amount var
scoreboard players operation #obsidian_storage_effective_milestone tmp = #obsidian_storage_amount var
execute if score #obsidian_storage_milestone var > #obsidian_storage_effective_milestone tmp run scoreboard players operation #obsidian_storage_effective_milestone tmp = #obsidian_storage_milestone var