# 석기 시대 도달 시 오버월드의 첫 항성기 타이머를 시작합니다.
# 첫 난세기는 초반 경제가 자리 잡을 시간을 주기 위해 일반 항성기보다 길게 설정합니다.
execute store result score #FIRST_ERA_ROLL roll_chance run random value 0..99

execute if score #FIRST_ERA_ROLL roll_chance matches 0..19 run scoreboard players set #GLOBAL timer_overworld 6000
execute if score #FIRST_ERA_ROLL roll_chance matches 0..19 run bossbar set bossbar_overworld max 6000
execute if score #FIRST_ERA_ROLL roll_chance matches 20..39 run scoreboard players set #GLOBAL timer_overworld 7200
execute if score #FIRST_ERA_ROLL roll_chance matches 20..39 run bossbar set bossbar_overworld max 7200
execute if score #FIRST_ERA_ROLL roll_chance matches 40..59 run scoreboard players set #GLOBAL timer_overworld 8400
execute if score #FIRST_ERA_ROLL roll_chance matches 40..59 run bossbar set bossbar_overworld max 8400
execute if score #FIRST_ERA_ROLL roll_chance matches 60..79 run scoreboard players set #GLOBAL timer_overworld 9600
execute if score #FIRST_ERA_ROLL roll_chance matches 60..79 run bossbar set bossbar_overworld max 9600
execute if score #FIRST_ERA_ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL timer_overworld 12000
execute if score #FIRST_ERA_ROLL roll_chance matches 80..99 run bossbar set bossbar_overworld max 12000

scoreboard players set #GLOBAL state_overworld 0
