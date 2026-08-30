scoreboard players set #structure_apply_context var 1
execute if score #beacon_structure_pending var matches 0 run function common/structure/beacon/off
execute if score #beacon_structure_pending var matches 1 run function common/structure/beacon/on
scoreboard players set #structure_apply_context var 0
schedule function structure/beacon_release 1t replace
