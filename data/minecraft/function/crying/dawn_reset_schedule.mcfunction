# 여명 중앙의 실제 작업 대상은 0,0 청크 하나뿐이다.
execute if score #dawn_reset_pending var matches 1 run return 0
scoreboard players set #dawn_reset_pending var 1
# 중앙 청크는 상시 로드되며, 2틱 지연은 디스플레이 제거 순서 때문에 유지한다.
schedule function crying/dawn_reset_finish 2t replace
