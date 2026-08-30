# 재시작으로 취소된 비동기 설치 요청의 강제 로드와 상태를 정리합니다.
execute if score #crystal_reset_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 -11 11 11
execute if score #crystal_overworld_forceload_owned var matches 1 in minecraft:polarnight run forceload remove 11 11
execute if score #crystal_dried_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 11
execute if score #crystal_frozen_forceload_owned var matches 1 in minecraft:polarnight run forceload remove 11 -11
execute if score #crystal_dawn_forceload_owned var matches 1 in minecraft:polarnight run forceload remove -11 -11

scoreboard players set #crystal_overworld_pending var 0
scoreboard players set #crystal_dried_pending var 0
scoreboard players set #crystal_frozen_pending var 0
scoreboard players set #crystal_dawn_pending var 0
scoreboard players set #crystal_overworld_forceload_owned var 0
scoreboard players set #crystal_dried_forceload_owned var 0
scoreboard players set #crystal_frozen_forceload_owned var 0
scoreboard players set #crystal_dawn_forceload_owned var 0
scoreboard players set #crystal_reset_forceload_owned var 0
scoreboard players set #crystal_reset_pending var 0
