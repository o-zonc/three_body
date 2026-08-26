# 집중 설정이 아직 없거나 발굴 장치가 잠겨 있으면 기본 확률로 맞춥니다.
execute unless score #dried_relic_focus var = #dried_relic_focus var run scoreboard players set #dried_relic_focus var 0
execute unless score #dried_relic_level upgrade matches 1.. run scoreboard players set #dried_relic_focus var 0

execute if score #GLOBAL era_paused matches 1 run return 0

# 구매/해금된 장치만 작동한다.
execute unless score #dried_relic_level upgrade matches 1.. run return 0

execute if score #dried_relic_timer generate matches 1.. run scoreboard players remove #dried_relic_timer generate 1
execute if score #dried_relic_timer generate matches ..0 run function dried/relic/collect
