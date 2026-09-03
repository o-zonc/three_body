execute if score #overworld civilization_age matches 2.. run return 0
# 목기 이하에서 석기 시대로 처음 진입하는 순간에만 첫 항성기 타이머를 생성한다.
function common/era/start_overworld
scoreboard players set #overworld civilization_age 2
advancement grant @a[advancements={0_overworld/11_stone_age=false}] only 0_overworld/11_stone_age

playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0

# 보상: 이동 속도 증가 30%
attribute @s movement_speed base set 0.13
