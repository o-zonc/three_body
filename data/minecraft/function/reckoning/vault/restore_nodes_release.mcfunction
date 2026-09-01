# 단기 복원이 직접 확보한 그룹만 해제한다.
execute if score #vault_restore_overworld_south_owned tmp matches 1 in minecraft:overworld run forceload remove -3 35 3 35
execute if score #vault_restore_overworld_north_owned tmp matches 1 in minecraft:overworld run forceload remove -3 -35 3 -35
execute if score #vault_restore_dried_owned tmp matches 1 in minecraft:dried run forceload remove -6 0 6 0
execute if score #vault_restore_frozen_owned tmp matches 1 in minecraft:frozen run forceload remove 0 -12 0 48
scoreboard players set #vault_restore_overworld_south_owned tmp 0
scoreboard players set #vault_restore_overworld_north_owned tmp 0
scoreboard players set #vault_restore_dried_owned tmp 0
scoreboard players set #vault_restore_frozen_owned tmp 0
# 구조물 release와 실행 순서가 겹쳐도 장기 생산 소유권을 최종 상태에 맞춘다.
function factory/chunk_load/sync
