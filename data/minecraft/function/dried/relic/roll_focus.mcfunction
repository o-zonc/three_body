# 발굴 우선 탐색 모드의 차원별 가중치를 적용합니다.
# #dried_relic_focus var: 1 overworld, 2 dried, 3 frozen
execute store result score #dried_relic_probability tmp run random value 0..99

# 오버월드 집중: 오버월드 90%, 메마른 세계 5%, 얼어붙은 세계 5%
execute if score #dried_relic_focus var matches 1 if score #dried_relic_probability tmp matches 0..89 run function dried/relic/roll_overworld
execute if score #dried_relic_focus var matches 1 if score #dried_relic_probability tmp matches 90..94 run scoreboard players set #dried_relic_roll tmp 5
execute if score #dried_relic_focus var matches 1 if score #dried_relic_probability tmp matches 95..99 run scoreboard players set #dried_relic_roll tmp 6

# 메마른 세계 집중: 메마른 세계 60%, 오버월드 35%, 얼어붙은 세계 5%
execute if score #dried_relic_focus var matches 2 if score #dried_relic_probability tmp matches 0..59 run scoreboard players set #dried_relic_roll tmp 5
execute if score #dried_relic_focus var matches 2 if score #dried_relic_probability tmp matches 60..94 run function dried/relic/roll_overworld
execute if score #dried_relic_focus var matches 2 if score #dried_relic_probability tmp matches 95..99 run scoreboard players set #dried_relic_roll tmp 6

# 얼어붙은 세계 집중: 얼어붙은 세계 60%, 오버월드 35%, 메마른 세계 5%
execute if score #dried_relic_focus var matches 3 if score #dried_relic_probability tmp matches 0..59 run scoreboard players set #dried_relic_roll tmp 6
execute if score #dried_relic_focus var matches 3 if score #dried_relic_probability tmp matches 60..94 run function dried/relic/roll_overworld
execute if score #dried_relic_focus var matches 3 if score #dried_relic_probability tmp matches 95..99 run scoreboard players set #dried_relic_roll tmp 5
