execute in overworld run execute in overworld run kill @e[type=marker,tag=elevator_2_perimeter]

execute in overworld run data modify block -13 -64 35 name set value "no_factory"
execute in overworld run setblock -13 -64 34 redstone_block
execute in overworld run setblock -13 -64 34 air

execute in overworld run fill -25 -63 4 -23 -61 4 polished_tuff_wall
execute in overworld run fill 4 -63 25 4 -62 23 polished_tuff_wall
