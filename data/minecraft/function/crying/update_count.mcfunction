# 네 우는 흑요석 수집 플래그에서 표시용 진행도를 다시 계산합니다.
scoreboard players set #crying_count var 0
execute if score #crying_overworld var matches 1 run scoreboard players add #crying_count var 1
execute if score #crying_dried var matches 1 run scoreboard players add #crying_count var 1
execute if score #crying_frozen var matches 1 run scoreboard players add #crying_count var 1
execute if score #crying_dawn var matches 1 run scoreboard players add #crying_count var 1
