scoreboard players set #structure_apply_context var 1
execute if score #factory_structure_pending var matches 0 run function common/structure/factory/off
execute if score #factory_structure_pending var matches 1 run function common/structure/factory/on
scoreboard players set #structure_apply_context var 0
schedule function structure/factory_release 1t replace
