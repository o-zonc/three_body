# 구조물 청크 임시 로드
execute in polar run forceload add -16 0 15 15
scoreboard players set #structure_loaded tmp 0
execute in polar if loaded -16 64 0 run scoreboard players add #structure_loaded tmp 1
execute in polar if loaded 0 64 0 run scoreboard players add #structure_loaded tmp 1
execute unless score #structure_loaded tmp matches 2 run schedule function minecraft:polarnight/structure/vault/off 1t replace
execute unless score #structure_loaded tmp matches 2 run return 0

#금고 비활성화
execute in polar run data modify block -7 61 7 name set value "polar:time_vault_unenabled"
execute in polar run setblock -8 61 7 redstone_block

# 구조물 청크 임시 로드 해제
execute in polar run forceload remove -16 0 15 15
scoreboard players reset #structure_loaded tmp
