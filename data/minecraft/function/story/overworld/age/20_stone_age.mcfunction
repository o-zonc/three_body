# 목기 이하에서 석기 시대로 처음 진입하는 순간에만 첫 항성기 타이머를 생성합니다.
execute if score #overworld civilization_age matches ..1 run function common/era/start_overworld
execute unless score #overworld civilization_age matches 2.. run scoreboard players set #overworld civilization_age 2

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0

# 보상: 이동 속도 증가 30%
attribute @s movement_speed base set 0.13