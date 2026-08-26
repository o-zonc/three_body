# 오버월드 계열 자원 7종 중 하나를 균등하게 선택합니다.
# 발굴 대상 인덱스: 0 wood, 1 stone, 2 coal, 3 copper, 4 iron, 7 emerald, 8 lapis
execute store result score #dried_relic_subroll tmp run random value 0..6
scoreboard players operation #dried_relic_roll tmp = #dried_relic_subroll tmp
execute if score #dried_relic_subroll tmp matches 5 run scoreboard players set #dried_relic_roll tmp 7
execute if score #dried_relic_subroll tmp matches 6 run scoreboard players set #dried_relic_roll tmp 8
