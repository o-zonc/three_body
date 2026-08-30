# 각 유적지 복구 상태를 별도 조건으로 반영해 발전과제 화면에 1/3 진행도를 표시한다.
execute if score #stronghold_overworld upgrade matches 1.. run advancement grant @s only 2_dried/04_three_ruins overworld_ruin_restored
execute if score #stronghold_frozen upgrade matches 1.. run advancement grant @s only 2_dried/04_three_ruins frozen_ruin_restored
execute if score #stronghold_dried upgrade matches 1.. run advancement grant @s only 2_dried/04_three_ruins dried_ruin_restored

execute unless score #stronghold_overworld upgrade matches 1.. run return 0
execute unless score #stronghold_frozen upgrade matches 1.. run return 0
execute unless score #stronghold_dried upgrade matches 1.. run return 0
return 1
