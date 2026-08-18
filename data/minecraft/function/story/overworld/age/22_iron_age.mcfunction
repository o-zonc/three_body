execute unless score #overworld civilization_age matches 4.. run scoreboard players set #overworld civilization_age 4
tellraw @s {"text":"철기 시대가 시작되었습니다. 문명은 더욱 단단한 도구와 무기를 손에 넣었습니다.","color":"white"}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.15
