# 중세 이후 공방 Lv. 1, 마법 연구소 Lv. 5를 달성하고 구리 1,000개와 철 600개 이상을 보유하면 근대에 진입한다.
execute unless score #overworld civilization_age matches 6 run return 0
execute unless score #level alchemy_workshop matches 1.. run return 0
execute unless score #alchemy_lab_level upgrade matches 5.. run return 0
execute unless score #copper material matches 1000.. run return 0
execute unless score #iron material matches 600.. run return 0

advancement grant @a only 0_overworld/16_modern_age
return 1
