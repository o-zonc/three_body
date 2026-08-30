execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2310
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in minecraft:frozen run fill -21 67 34 -19 67 34 minecraft:spruce_fence
