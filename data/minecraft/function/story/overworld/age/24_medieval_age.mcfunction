execute unless score #overworld civilization_age matches 6.. run scoreboard players set #overworld civilization_age 6
# 중세: 상점에서 연금술 공방을 Lv. 1로 업그레이드할 수 있다.
tellraw @s {"text":"중세에 들어섰습니다. 문명은 사회와 교역이라는 새로운 힘을 발견했습니다.","color":"green"}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.25
