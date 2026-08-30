scoreboard players set #structure_apply_context var 1
execute if score #observatory_structure_pending var matches 0 run function common/structure/observatory/off
execute if score #observatory_structure_pending var matches 1 run function common/structure/observatory/on
scoreboard players set #structure_apply_context var 0
schedule function structure/observatory_release 1t replace
