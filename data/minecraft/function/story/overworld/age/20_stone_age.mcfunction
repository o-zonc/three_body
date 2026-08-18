execute unless score #overworld civilization_age matches 2.. run scoreboard players set #overworld civilization_age 2
tellraw @s {"text":"석기 시대에 들어섰습니다. 돌은 더 튼튼한 도구와 새로운 가능성을 열어 줍니다.","color":"gray"}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.05
