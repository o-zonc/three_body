execute in overworld store success score #observatory_forceload_added tmp run forceload add 18 -4 25 24

execute in overworld run data modify block 18 -64 18 name set value "no_ob"
execute in overworld run setblock 18 -64 17 redstone_block
execute in overworld run setblock 18 -64 17 air

execute in overworld run fill 23 -63 -4 25 -62 -4 diorite_wall

execute if score #observatory_forceload_added tmp matches 1 in overworld run forceload remove 18 -4 25 24
