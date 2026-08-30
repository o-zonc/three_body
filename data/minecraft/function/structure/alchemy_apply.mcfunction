scoreboard players set #structure_apply_context var 1
execute if score #alchemy_structure_pending var matches 0 run function common/structure/alchemy_workshop/off
execute if score #alchemy_structure_pending var matches 1 run function common/structure/alchemy_workshop/on
scoreboard players set #structure_apply_context var 0
schedule function structure/alchemy_release 1t replace
