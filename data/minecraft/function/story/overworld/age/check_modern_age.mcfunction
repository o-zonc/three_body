# 중세 이후 공방 Lv. 1과 두 환경 차원 방문을 모두 달성하면 근대에 진입한다.
execute unless score #overworld civilization_age matches 6 run return 0
execute unless score #level alchemy_workshop matches 1.. run return 0
execute unless score #GLOBAL first_dried matches 1.. run return 0
execute unless score #GLOBAL first_frozen matches 1.. run return 0

advancement grant @a only 0_overworld/16_modern_age
return 1
