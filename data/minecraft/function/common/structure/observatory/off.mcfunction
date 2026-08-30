execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2030
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in overworld run data modify block 18 -64 18 name set value "no_ob"
execute in overworld run setblock 18 -64 17 redstone_block
execute in overworld run setblock 18 -64 17 air

execute in overworld run fill 23 -63 -4 25 -62 -4 diorite_wall
