# 중세 이후 공방 Lv. 1을 달성하고 구리 200개와 철 120개 이상을 보유하면 근대에 진입한다.
execute unless score #overworld civilization_age matches 6 run return 0
execute unless score #level alchemy_workshop matches 1.. run return 0
execute unless score #copper material matches 200.. run return 0
execute unless score #iron material matches 120.. run return 0

advancement grant @a only 0_overworld/16_modern_age
return 1
