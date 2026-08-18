execute unless score #overworld civilization_age matches 1.. run scoreboard players set #overworld civilization_age 1
tellraw @s {"text":"큰 나무도 작은 씨앗에서 시작했다.","color":"gold"}
tellraw @s {"text":"나무는 쉽게 썩어 유물로 남아있지 않기 때문에 공식적인 시대 구분으로 인정받지는 못합니다.", "color": gray}
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.0
