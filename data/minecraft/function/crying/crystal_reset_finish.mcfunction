# 로드가 완료된 극야에서 흑요석 이벤트의 엔드 수정을 다시 한 번 전부 제거합니다.
execute in minecraft:polarnight as @e[type=minecraft:end_crystal] run data merge entity @s {Invulnerable:0b}
execute in minecraft:polarnight run kill @e[type=minecraft:end_crystal]
execute if score #crystal_reset_forceload_added tmp matches 1 in minecraft:polarnight run forceload remove -16 -16 16 16
