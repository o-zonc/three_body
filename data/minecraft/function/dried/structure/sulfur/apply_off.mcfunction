execute in minecraft:dried run data modify block -8 62 -10 name set value "no_sulfur"
execute in minecraft:dried run setblock -8 61 -10 redstone_block
execute in minecraft:dried run setblock -8 61 -10 air

# 유황 구조물의 유리병 디스플레이만 제거한다.
execute in minecraft:dried positioned -20 65.5 0 run kill @e[type=minecraft:item_display,distance=..2]
