# 단기 복원이 직접 확보한 실제 청크만 해제한다.
execute if score #vault_restore_wood_coal_owned tmp matches 1 in minecraft:overworld run forceload remove 0 35
execute if score #vault_restore_stone_owned tmp matches 1 in minecraft:overworld run forceload remove -3 35
execute if score #vault_restore_copper_iron_owned tmp matches 1 in minecraft:overworld run forceload remove 3 -35
execute if score #vault_restore_emerald_lapis_owned tmp matches 1 in minecraft:overworld run forceload remove -3 -35
execute if score #vault_restore_heat_owned tmp matches 1 in minecraft:dried run forceload remove -6 0
execute if score #vault_restore_gold_owned tmp matches 1 in minecraft:dried run forceload remove 6 0
execute if score #vault_restore_diamond_owned tmp matches 1 in minecraft:frozen run forceload remove 0 -12
execute if score #vault_restore_cold_owned tmp matches 1 in minecraft:frozen run forceload remove 0 48
scoreboard players set #vault_restore_wood_coal_owned tmp 0
scoreboard players set #vault_restore_stone_owned tmp 0
scoreboard players set #vault_restore_copper_iron_owned tmp 0
scoreboard players set #vault_restore_emerald_lapis_owned tmp 0
scoreboard players set #vault_restore_heat_owned tmp 0
scoreboard players set #vault_restore_gold_owned tmp 0
scoreboard players set #vault_restore_diamond_owned tmp 0
scoreboard players set #vault_restore_cold_owned tmp 0
# 구조물 release와 실행 순서가 겹쳐도 장기 생산 소유권을 최종 상태에 맞춘다.
function factory/chunk_load/sync
