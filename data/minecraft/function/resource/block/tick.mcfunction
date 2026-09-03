# Generic time-based block resource state machine.
# 매크로 인수: id, block, x, y, z
# 참고 구현과 같은 상태 모델을 사용한다.
# - 블록 존재: idle, remain 미존재
# - air + remain 미존재: 방금 파괴됨 -> harvest 정확히 1회
# - air + remain 존재: 재생성 대기 중
# minecraft.mined 통계는 harvest 자체의 조건이 아니라 카탈리스트 직접 채굴 판정에만 사용한다.
$scoreboard players set #$(id)_harvested_this_tick var 0

# 생산 정지 중에는 이전 자동 채굴 신호를 다음 활성화 시점까지 보존하지 않는다.
$execute if score #disable_$(id)_production var matches 1 run scoreboard players set #$(id)_automated_harvest var 0
$execute if score #disable_$(id)_production var matches 1 run return 0

# 노드 위치가 air가 아니면 아직 채굴되지 않은 idle 상태이다.
# 지정 자원 블록이 아닌 다른 블록이 있어도 재생성으로 덮어쓰지 않는다.
$execute unless block $(x) $(y) $(z) air run scoreboard players reset #$(id)_remain generate
$execute unless block $(x) $(y) $(z) air run scoreboard players set #$(id)_automated_harvest var 0
$execute unless block $(x) $(y) $(z) air run return 0

# air + remain 미존재가 단일 파괴 edge이다.
scoreboard players set #catalyst_active_harvest var 0
tag @a remove resource_node_miner
$execute unless score #$(id)_automated_harvest var matches 1 positioned $(x) $(y) $(z) as @a[tag=player,scores={$(id)_node_mined=1..},distance=..6,sort=nearest,limit=1] run tag @s add resource_node_miner
execute if entity @a[tag=resource_node_miner] run scoreboard players set #catalyst_active_harvest var 1

$execute if block $(x) $(y) $(z) air unless score #$(id)_remain generate = #$(id)_remain generate run scoreboard players set #$(id)_harvested_this_tick var 1
$execute if score #$(id)_harvested_this_tick var matches 1 run function resource/material/$(id)/harvest

tag @a remove resource_node_miner
scoreboard players set #catalyst_active_harvest var 0
$scoreboard players set #$(id)_automated_harvest var 0

# harvest를 처리한 tick에는 쿨다운을 차감하지 않아 설정값만큼 완전한 대기 tick을 보장한다.
$execute if score #$(id)_harvested_this_tick var matches 1 run return 0

# 이후 tick부터 쿨다운을 줄이고 0이 되면 즉시 재설치를 시도한다.
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches 1.. run scoreboard players remove #$(id)_remain generate 1
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches ..0 run function resource/material/$(id)/place
