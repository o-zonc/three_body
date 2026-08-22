# 얼어붙은 차원 우는 흑요석 상호작용
# 극한 자원 수급 Lv.2 이전에는 수집하지 않고 힌트만 보여줍니다.
execute unless score #special_second_lvl upgrade matches 2.. run tellraw @s {"text":"수상한 흑요석이 있다...","color":"gray"}
execute unless score #special_second_lvl upgrade matches 2.. run return 0

# 기존 월드 호환을 위해 조건을 이미 달성했다면 블록 상태도 맞춰 줍니다.
function crying/frozen_reveal
function crying/collect {id:"frozen",x:11,z:-11}
