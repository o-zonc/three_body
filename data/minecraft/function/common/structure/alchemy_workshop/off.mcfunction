execute in overworld run data modify block -33 -64 -33 name set value "no_alchemy"
execute in overworld run setblock -33 -64 -32 redstone_block
execute in overworld run setblock -33 -64 -32 air

execute in overworld run kill @e[type=item]

execute in overworld run fill -23 -63 -4 -25 -61 -4 polished_blackstone_brick_wall
execute in overworld run fill -4 -63 -25 -4 -61 -23 polished_blackstone_brick_wall