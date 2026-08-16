execute if score #disable_gold_production var matches 1 run return 0
execute unless score #area_zone unlock matches 1 run setblock -74 1 -5 air replace
execute unless score #area_zone unlock matches 1 run return 0
execute unless score #gold unlock matches 1 run setblock -74 1 -5 air replace
execute unless score #gold unlock matches 1 run return 0

execute unless block -74 1 -5 air run return run scoreboard players reset #gold_remain generate

# 금 파괴
execute if block -74 1 -5 air unless score #gold_remain generate = #gold_remain generate run function resource/nether/gold/regen/break

# 쿨다운이 전부 다 돌면 금 광석 설치
execute if block -74 1 -5 air if score #gold_remain generate matches ..0 run function resource/nether/gold/regen/place

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if block -74 1 -5 air if score #gold_remain generate matches 1.. run return run scoreboard players remove #gold_remain generate 1
