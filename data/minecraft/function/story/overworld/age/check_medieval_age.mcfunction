# 고대 시대에 연금술 공방을 해금하고 도구를 Lv. 9 이상으로 강화하면 중세에 진입한다.
execute unless score #overworld civilization_age matches 5 run return 0
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #tool upgrade matches 9.. run return 0

advancement grant @a only 0_overworld/15_medieval_age
return 1
