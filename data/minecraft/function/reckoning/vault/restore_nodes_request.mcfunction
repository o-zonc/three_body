# 단기 복원도 실제 청크별로 소유권을 기록한다.
scoreboard players set #vault_restore_wood_coal_owned tmp 0
scoreboard players set #vault_restore_stone_owned tmp 0
scoreboard players set #vault_restore_copper_iron_owned tmp 0
scoreboard players set #vault_restore_emerald_lapis_owned tmp 0
scoreboard players set #vault_restore_heat_owned tmp 0
scoreboard players set #vault_restore_gold_owned tmp 0
scoreboard players set #vault_restore_diamond_owned tmp 0
scoreboard players set #vault_restore_cold_owned tmp 0
# wood는 항상 해금된 기본 자원이다.
execute in minecraft:overworld store success score #vault_restore_wood_coal_owned tmp run forceload add 0 35
execute if score #stone unlock matches 1 in minecraft:overworld store success score #vault_restore_stone_owned tmp run forceload add -3 35
execute if score #copper unlock matches 1 in minecraft:overworld store success score #vault_restore_copper_iron_owned tmp run forceload add 3 -35
execute unless score #copper unlock matches 1 if score #iron unlock matches 1 in minecraft:overworld store success score #vault_restore_copper_iron_owned tmp run forceload add 3 -35
execute if score #emerald unlock matches 1 in minecraft:overworld store success score #vault_restore_emerald_lapis_owned tmp run forceload add -3 -35
execute unless score #emerald unlock matches 1 if score #lapis unlock matches 1 in minecraft:overworld store success score #vault_restore_emerald_lapis_owned tmp run forceload add -3 -35
execute if score #heat unlock matches 1 in minecraft:dried store success score #vault_restore_heat_owned tmp run forceload add -6 0
execute if score #gold unlock matches 1 in minecraft:dried store success score #vault_restore_gold_owned tmp run forceload add 6 0
execute if score #diamond unlock matches 1 in minecraft:frozen store success score #vault_restore_diamond_owned tmp run forceload add 0 -12
execute if score #cold unlock matches 1 in minecraft:frozen store success score #vault_restore_cold_owned tmp run forceload add 0 48
schedule function reckoning/vault/restore_nodes_apply 2t replace
