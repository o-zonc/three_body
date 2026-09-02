return 0
execute if score #factory_forceload_owned var matches 1 in minecraft:overworld run forceload remove -36 4 4 36
scoreboard players set #factory_forceload_owned var 0

# 구조물 임시 소유권이 빠진 뒤 생산용 장기 소유권을 다시 확보한다.
function factory/chunk_load/sync
return 0
