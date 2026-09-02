scoreboard players set #structure_apply_context var 1
execute if score #frozen_bridge_structure_pending var matches 0 run function frozen/structure/bridge/off
execute if score #frozen_bridge_structure_pending var matches 1 run function frozen/structure/bridge/on
scoreboard players set #structure_apply_context var 0
