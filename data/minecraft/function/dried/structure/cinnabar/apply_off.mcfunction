scoreboard players set #dried_cinnabar unlock 0
execute in minecraft:dried run data modify block 8 62 10 name set value "no_cinnabar"
execute in minecraft:dried run setblock 8 61 10 redstone_block
execute in minecraft:dried run setblock 8 61 10 air

# 진사 시설 영역의 메마른 세계 유적지 복구 블록도 함께 제거한다.
execute in minecraft:dried run setblock 18 65 6 air
execute in minecraft:dried run setblock 18 66 6 air
