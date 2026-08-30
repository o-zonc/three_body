scoreboard players set #structure_apply_context var 1
execute if score #frozen_maze_structure_pending var matches 0 run function frozen/structure/maze/off
execute if score #frozen_maze_structure_pending var matches 1 run function frozen/structure/maze/on
scoreboard players set #structure_apply_context var 0
schedule function structure/frozen_maze_release 1t replace
