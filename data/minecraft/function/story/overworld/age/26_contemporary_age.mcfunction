execute unless score #overworld civilization_age matches 8.. run scoreboard players set #overworld civilization_age 8
execute unless score #information unlock matches 1 at @s run function resource/effect/unlock_success
scoreboard players set #information unlock 1
tellraw @s {"text":"현대에 도달했습니다. 문명은 정보를 다루고 세계를 자동화하기 시작합니다.","color":"white"}
