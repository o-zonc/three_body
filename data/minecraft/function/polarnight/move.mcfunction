# 새 차원 진입 시 이전 멸망 효과가 남아 있지 않도록 안전하게 제거
effect clear @a blindness
effect clear @a darkness
title @a clear
function mover/local/recover

execute in polarnight run tp @a 0 64 0
execute in polarnight run weather clear
function mover/items/arrive_other
gamerule advance_time false
execute in polarnight run time set 18000

scoreboard players set #GLOBAL visited_dried 0
scoreboard players set #GLOBAL visited_frozen 0
scoreboard players set #GLOBAL visited_overworld 0
scoreboard players add #GLOBAL visited_polar 1
scoreboard players set #GLOBAL current_dim 3

# 관측소에서 이미 흐름을 멈춰 둔 상태는 극야 진입으로 풀지 않는다.
# era_observed는 멸망 시작 전에 정지 상태였음을 기록하며,
# dev 태그가 있는 테스트 환경에서는 수동 정지를 항상 보존한다.
execute unless score #GLOBAL era_observed matches 1 unless entity @a[tag=dev] run scoreboard players set #GLOBAL era_paused 0

# 극야의 첫 자원 인터랙션에서 이번 문명의 정산을 한 번만 실행한다.
scoreboard players set #GLOBAL reckoning_ready 1
# 시공간 확장은 극야 진입당 정보/시간 보관소를 통틀어 한 번만 사용할 수 있다.
scoreboard players set #spacetime_expansion_used var 0
# 공허의 구멍 수급 횟수도 새 문명 정산 주기마다 초기화한다. 레벨은 영구 유지한다.
scoreboard players set #hole_claims var 0
