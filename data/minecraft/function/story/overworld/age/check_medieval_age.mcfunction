# 고대 시대에 연금술 공방을 해금하고 도구를 Lv. 8 이상으로 강화하면 중세에 진입한다.
execute unless score #overworld civilization_age matches 5 run return 0
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #tool upgrade matches 8.. run return 0

execute as @a[tag=player,limit=1] at @s run function story/overworld/age/24_medieval_age
return 1
