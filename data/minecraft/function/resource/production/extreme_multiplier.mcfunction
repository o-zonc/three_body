# 극한 환경 수급 강화 수치를 금·다이아몬드의 공통 생산량 보너스 배수로 사용한다.
scoreboard players set #extreme_multiplier tmp 0
execute if score #special_second_lvl upgrade matches 1 run scoreboard players set #extreme_multiplier tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players set #extreme_multiplier tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players set #extreme_multiplier tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players set #extreme_multiplier tmp 10
return run scoreboard players get #extreme_multiplier tmp
