# 단기 복원 소유권. 이미 공장/다른 시스템이 로드한 그룹은 소유하지 않는다.
scoreboard players set #vault_restore_overworld_south_owned tmp 0
scoreboard players set #vault_restore_overworld_north_owned tmp 0
scoreboard players set #vault_restore_dried_owned tmp 0
scoreboard players set #vault_restore_frozen_owned tmp 0
execute in minecraft:overworld store success score #vault_restore_overworld_south_owned tmp run forceload add -3 35 3 35
execute if score #copper unlock matches 1 in minecraft:overworld store success score #vault_restore_overworld_north_owned tmp run forceload add -3 -35 3 -35
execute if score #iron unlock matches 1 in minecraft:overworld store success score #vault_restore_overworld_north_owned tmp run forceload add -3 -35 3 -35
execute if score #emerald unlock matches 1 in minecraft:overworld store success score #vault_restore_overworld_north_owned tmp run forceload add -3 -35 3 -35
execute if score #lapis unlock matches 1 in minecraft:overworld store success score #vault_restore_overworld_north_owned tmp run forceload add -3 -35 3 -35
execute if score #gold unlock matches 1 in minecraft:dried store success score #vault_restore_dried_owned tmp run forceload add -6 0 6 0
execute if score #heat unlock matches 1 in minecraft:dried store success score #vault_restore_dried_owned tmp run forceload add -6 0 6 0
execute if score #diamond unlock matches 1 in minecraft:frozen store success score #vault_restore_frozen_owned tmp run forceload add 0 -12 0 48
execute if score #cold unlock matches 1 in minecraft:frozen store success score #vault_restore_frozen_owned tmp run forceload add 0 -12 0 48
schedule function reckoning/vault/restore_nodes_apply 2t replace
