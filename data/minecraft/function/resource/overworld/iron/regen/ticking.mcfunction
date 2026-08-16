execute if score #disable_iron_production var matches 1 run return 0

# 동굴 해금 전에는 미작동
execute unless score #cave unlock matches 1 run setblock -19 1 3 air replace
execute unless score #cave unlock matches 1 run return 0

execute unless block -19 1 3 air run return run scoreboard players reset #iron_remain generate

# 철 광석 파괴
execute if block -19 1 3 air unless score #iron_remain generate = #iron_remain generate run function resource/overworld/iron/regen/break

# 쿨다운이 전부 다 돌면 철 광석 설치
execute if block -19 1 3 air if score #iron_remain generate matches ..0 run function resource/overworld/iron/regen/place

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if block -19 1 3 air if score #iron_remain generate matches 1.. run return run scoreboard players remove #iron_remain generate 1
