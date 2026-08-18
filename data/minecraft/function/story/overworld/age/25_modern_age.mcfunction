execute unless score #overworld civilization_age matches 7.. run scoreboard players set #overworld civilization_age 7
# 근대: 상점에서 연금술 공방을 Lv. 2로 업그레이드할 수 있다.
tellraw @s {"text":"근대가 시작되었습니다. 과학과 기계가 문명의 속도를 바꾸기 시작합니다.","color":"#71CDF9"}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.3
