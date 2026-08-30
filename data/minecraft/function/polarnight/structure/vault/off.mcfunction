execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2400
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in polarnight run data modify block -7 61 7 name set value "deepslate_vault"
execute in polarnight run setblock -8 61 7 redstone_block
execute in polarnight run setblock -8 61 7 air
