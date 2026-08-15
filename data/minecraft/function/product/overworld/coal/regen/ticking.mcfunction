execute if score #disable_coal_production var matches 1 run return 0
# D의 시련에서 석탄 생산이 손실된 상태면 작동하지 않음
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_coal_production trial matches 1 run setblock -15 1 3 air replace
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_coal_production trial matches 1 run scoreboard players reset #coal_remain generate
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_coal_production trial matches 1 run return 0
# 동굴 해금 전에는 미작동
execute unless score #cave unlock matches 1 run setblock -15 1 3 air replace
execute unless score #cave unlock matches 1 run return 0

execute unless block -15 1 3 air run return run scoreboard players reset #coal_remain generate

# 석탄 광석 파괴
execute if block -15 1 3 air unless score #coal_remain generate = #coal_remain generate run function product/overworld/coal/regen/break

# 쿨다운이 전부 다 돌면 석탄 광석 설치
execute if block -15 1 3 air if score #coal_remain generate matches ..0 run function product/overworld/coal/regen/place

# 쿨다운이 아직 다 돌지 않았으면 쿨다운 감소
execute if block -15 1 3 air if score #coal_remain generate matches 1.. run return run scoreboard players remove #coal_remain generate 1
