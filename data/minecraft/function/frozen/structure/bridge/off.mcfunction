execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2300
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in frozen run fill -1 67 6 1 67 6 spruce_fence
execute in frozen run fill -1 67 30 1 67 30 spruce_fence
