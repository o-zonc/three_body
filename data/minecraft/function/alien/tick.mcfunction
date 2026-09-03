# 충전된 보호막은 파티클과 자원 탈취를 모두 무효화한다.
execute unless score #GLOBAL alien_interference matches 1 run return 0
execute unless score #GLOBAL shield_charge matches 1.. as @a at @s run particle minecraft:glow ~ ~1 ~ 0.8 0.7 0.8 0.01 2 force @s
execute unless score #GLOBAL shield_charge matches 1.. run scoreboard players remove #GLOBAL alien_timer 1
execute unless score #GLOBAL shield_charge matches 1.. if score #GLOBAL alien_timer matches ..0 run function alien/steal
execute if score #GLOBAL shield_charge matches 1.. run scoreboard players set #GLOBAL alien_timer 1200
