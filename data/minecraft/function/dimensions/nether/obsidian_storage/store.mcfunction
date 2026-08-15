execute unless score #obsidian_storage_amount var = #obsidian_storage_amount var run scoreboard players set #obsidian_storage_amount var 0
function dimensions/nether/obsidian_storage/value/max_capacity
execute if score #obsidian_storage_amount var > #obsidian_storage_capacity tmp run scoreboard players operation #obsidian_storage_amount var = #obsidian_storage_capacity tmp
execute if score #obsidian_storage_amount var >= #obsidian_storage_capacity tmp at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute if score #obsidian_storage_amount var >= #obsidian_storage_capacity tmp run title @s actionbar "§c흑요석 저장고가 가득 찼습니다."
execute if score #obsidian_storage_amount var >= #obsidian_storage_capacity tmp run return 0

execute unless score #obsidian material matches 1.. at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #obsidian material matches 1.. run title @s actionbar "§c저장할 흑요석이 없습니다."
execute unless score #obsidian material matches 1.. run return 0

scoreboard players remove #obsidian material 1
scoreboard players add #obsidian_storage_amount var 1
function dimensions/nether/obsidian_storage/update_milestone

function product/overworld/obsidian/lock/update
function dimensions/nether/obsidian_storage/ui/info
return 1