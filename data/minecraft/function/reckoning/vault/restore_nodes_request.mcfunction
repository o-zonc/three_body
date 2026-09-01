# 단기 복원 소유권. 그룹별 필요 여부를 먼저 계산해 forceload add는 한 번만 호출한다.
scoreboard players set #vault_restore_need_overworld_north tmp 0
scoreboard players set #vault_restore_need_dried tmp 0
execute if score #copper unlock matches 1 run scoreboard players set #vault_restore_need_overworld_north tmp 1
execute if score #iron unlock matches 1 run scoreboard players set #vault_restore_need_overworld_north tmp 1
execute if score #emerald unlock matches 1 run scoreboard players set #vault_restore_need_overworld_north tmp 1
execute if score #lapis unlock matches 1 run scoreboard players set #vault_restore_need_overworld_north tmp 1
execute if score #gold unlock matches 1 run scoreboard players set #vault_restore_need_dried tmp 1
execute if score #heat unlock matches 1 run scoreboard players set #vault_restore_need_dried tmp 1

scoreboard players set #vault_restore_overworld_south_owned tmp 0
scoreboard players set #vault_restore_overworld_north_owned tmp 0
scoreboard players set #vault_restore_dried_owned tmp 0
scoreboard players set #vault_restore_diamond_owned tmp 0
scoreboard players set #vault_restore_cold_owned tmp 0
# wood는 항상 해금된 기본 자원이므로 남쪽 그룹은 항상 복원한다.
execute in minecraft:overworld store success score #vault_restore_overworld_south_owned tmp run forceload add -3 35 3 35
execute if score #vault_restore_need_overworld_north tmp matches 1 in minecraft:overworld store success score #vault_restore_overworld_north_owned tmp run forceload add -3 -35 3 -35
execute if score #vault_restore_need_dried tmp matches 1 in minecraft:dried store success score #vault_restore_dried_owned tmp run forceload add -6 0 6 0
execute if score #diamond unlock matches 1 in minecraft:frozen store success score #vault_restore_diamond_owned tmp run forceload add 0 -12
execute if score #cold unlock matches 1 in minecraft:frozen store success score #vault_restore_cold_owned tmp run forceload add 0 48
schedule function reckoning/vault/restore_nodes_apply 2t replace
