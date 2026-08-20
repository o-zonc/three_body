data modify block -33 -64 -33 name set value "no_alchemy"
setblock -33 -64 -32 redstone_block
setblock -33 -64 -32 air

kill @e[type=item]

fill -23 -63 -4 -25 -61 -4 polished_blackstone_brick_wall
fill -4 -63 -25 -4 -61 -23 polished_blackstone_brick_wall