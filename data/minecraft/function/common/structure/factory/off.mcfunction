# 공장 구조물을 제거하기 전에 모든 공장 표시등을 끈다.
# powered 상태는 유지하고 lit만 false로 되돌린다.
execute in overworld as @e[type=interaction,tag=factory] at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=false] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=false]
execute in overworld as @e[type=interaction,tag=factory] at @s if block ~ ~-1 ~ waxed_copper_bulb[lit=true,powered=true] run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false,powered=true]

execute in overworld run execute in overworld run kill @e[type=marker,tag=elevator_2_perimeter]

execute in overworld run data modify block -13 -64 35 name set value "no_factory"
execute in overworld run setblock -13 -64 34 redstone_block
execute in overworld run setblock -13 -64 34 air

execute in overworld run fill -25 -63 4 -23 -61 4 polished_tuff_wall
execute in overworld run fill 4 -63 25 4 -62 23 polished_tuff_wall
