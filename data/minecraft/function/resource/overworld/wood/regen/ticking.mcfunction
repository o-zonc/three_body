execute if score #disable_wood_resourceion var matches 1 run return 0
execute unless block 0 -59 35 air run return run scoreboard players reset #wood_remain generate

# 나무 파괴
execute if block 0 -59 35 air unless score #wood_remain generate = #wood_remain generate run function resource/overworld/wood/regen/break

# 쿨다운이 전부 다 돌면 나무 설치
execute if block 0 -59 35 air if score #wood_remain generate matches ..0 run function resource/overworld/wood/regen/place

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if block 0 -59 35 air if score #wood_remain generate matches 1.. run return run scoreboard players remove #wood_remain generate 1