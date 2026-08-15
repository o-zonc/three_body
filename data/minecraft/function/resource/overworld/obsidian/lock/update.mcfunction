# 흑요석 보유량이 최대치에 도달했는지 검사하고 채광 방지 interaction 크기를 갱신

execute store result score #obsidian_max_up_value tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_value
scoreboard players set #obsidian_full tmp 0
execute if score #obsidian material >= #obsidian_max_up_value tmp run scoreboard players set #obsidian_full tmp 1

execute as @e[tag=obsidian_lock,type=interaction] if score #obsidian_full tmp matches 1 run data modify entity @s width set value 1.063f
execute as @e[tag=obsidian_lock,type=interaction] if score #obsidian_full tmp matches 1 run data modify entity @s height set value 1.063f
execute as @e[tag=obsidian_lock,type=interaction] unless score #obsidian_full tmp matches 1 run data modify entity @s width set value 0.0f
execute as @e[tag=obsidian_lock,type=interaction] unless score #obsidian_full tmp matches 1 run data modify entity @s height set value 0.0f