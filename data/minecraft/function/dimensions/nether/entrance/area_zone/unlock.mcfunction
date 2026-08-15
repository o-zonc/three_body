execute if score #area_zone unlock matches 1 run return 0

execute unless score #obsidian_storage_amount var = #obsidian_storage_amount var run scoreboard players set #obsidian_storage_amount var 0

execute if score #obsidian_storage_amount var matches 15.. run scoreboard players set #area_zone unlock 1
execute if score #obsidian_storage_amount var matches 15.. at @s run playsound entity.ender_eye.death weather @s ~ ~ ~ 0.5 1.5
execute if score #obsidian_storage_amount var matches 15.. run return 1

execute unless score #obsidian_storage_amount var matches 15.. at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #obsidian_storage_amount var matches 15.. run title @s actionbar "§c흑요석 저장고에 흑요석 15개를 저장해야 합니다."
execute unless score #obsidian_storage_amount var matches 15.. run return 0
