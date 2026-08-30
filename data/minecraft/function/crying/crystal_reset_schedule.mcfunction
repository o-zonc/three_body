# 이미 진행 중인 정합화 요청을 다시 예약하지 않습니다.
execute if score #crystal_reset_pending var matches 1 run return 0
scoreboard players set #crystal_reset_pending var 1

# 극야 엔드 수정 청크를 다음 틱까지 유지해 엔티티 데이터가 확실히 로드되게 합니다.
scoreboard players set #crystal_reset_forceload_owned var 0
# 네 설치 좌표(±11)가 실제로 속한 2×2청크만 로드합니다.
execute in minecraft:polarnight store success score #crystal_reset_forceload_owned var run forceload add -11 -11 11 11
schedule function crying/crystal_reset_finish 2t replace
