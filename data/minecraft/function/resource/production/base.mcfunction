# 2층 get 강화는 1층 자원 상점 배수를 적용하기 전에 기본 생산량에 더합니다.
scoreboard players set #production_base tmp 1
execute if score #get_second_lvl upgrade matches 1 run scoreboard players add #production_base tmp 1
execute if score #get_second_lvl upgrade matches 2 run scoreboard players add #production_base tmp 2
execute if score #get_second_lvl upgrade matches 3 run scoreboard players add #production_base tmp 5
execute if score #get_second_lvl upgrade matches 4.. run scoreboard players add #production_base tmp 10
return run scoreboard players get #production_base tmp
