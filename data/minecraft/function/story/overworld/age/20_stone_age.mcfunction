execute unless score #overworld civilization_age matches 2.. run scoreboard players set #overworld civilization_age 2
execute unless score #GLOBAL overworld_era_started matches 1 run function common/era/start_overworld
scoreboard players set #GLOBAL overworld_era_started 1

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0

# 보상: 이동 속도 증가 30%
attribute @s movement_speed base set 0.13