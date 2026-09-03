# 메마른 차원 우는 흑요석 상호작용
# 이미 수집했다면 기존 진행도만 다시 표시하고 종료한다.
execute if score #crying_dried var matches 1 run function crying/collect {id:"dried",x:-11,z:11}
execute if score #crying_dried var matches 1 run return 0

# 처음 수집할 때만 조각을 기록하고 극야의 엔더 수정을 생성한다.
function crying/collect {id:"dried",x:-11,z:11}

# 비밀 공간에서 빠져나온 뒤 다시 모래로 봉인한다.
function dried/move
execute in minecraft:dried run fill 3 60 3 -3 60 -3 minecraft:sandstone
execute in minecraft:dried run fill 3 61 3 -3 63 -3 minecraft:sand
