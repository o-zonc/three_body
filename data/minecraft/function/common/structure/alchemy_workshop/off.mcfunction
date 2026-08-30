execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2000
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in overworld run data modify block -33 -64 -33 name set value "no_alchemy"
execute in overworld run setblock -33 -64 -32 redstone_block
execute in overworld run setblock -33 -64 -32 air

execute in overworld run setblock -24 -63 -36 air
execute in overworld run setblock -36 -63 -24 air
execute in overworld run setblock -24 -63 -11 air
execute in overworld run setblock -24 -63 -37 air
execute in overworld run setblock -37 -63 -24 air
execute in overworld run setblock -24 -63 -11 air

# 시간축 개방 후 나타나는 우주 이동기 단말을 제거합니다.
execute in overworld run setblock -20 -62 -24 air

execute in overworld run fill -23 -63 -4 -25 -61 -4 polished_blackstone_brick_wall
execute in overworld run fill -4 -63 -25 -4 -61 -23 polished_blackstone_brick_wall
