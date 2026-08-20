execute in overworld run kill @e[type=marker,tag=elevator_2_perimeter]

data modify block -13 -64 35 name set value "no_factory"
setblock -13 -64 34 redstone_block
setblock -13 -64 34 air

fill -25 -63 4 -23 -61 4 polished_tuff_wall
fill 4 -63 25 4 -62 23 polished_tuff_wall
