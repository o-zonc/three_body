execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2011
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in overworld run data modify block 18 -64 -30 name set value "beacon"
execute in overworld run setblock 18 -64 -31 redstone_block
execute in overworld run setblock 18 -64 -31 air
