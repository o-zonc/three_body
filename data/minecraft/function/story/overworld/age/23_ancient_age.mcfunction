execute unless score #overworld civilization_age matches 5.. run scoreboard players set #overworld civilization_age 5
# 고대: 상점에서 연금술 공방을 해금할 수 있다.
tellraw @s {"text":"고대의 지식이 축적되기 시작합니다. 문명은 경험을 넘어 지식을 전승합니다.","color":"aqua"}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.2
