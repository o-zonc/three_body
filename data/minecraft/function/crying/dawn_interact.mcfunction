# 여명 차원 우는 흑요석 상호작용
# 네 장치의 시각 진행이 모두 완성되어 우는 흑요석 디스플레이가 나타난 뒤에만 수집할 수 있습니다.
execute in minecraft:dawn unless entity @e[type=minecraft:block_display,tag=crying_dawn_display] run return 0

function crying/collect {id:"dawn",x:-11,z:-11}
