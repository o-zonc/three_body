# 엘리베이터 Lv. 2: 3층 이동을 해금한다.
execute unless score #GLOBAL elevator_unlocked matches 1 run return 0
execute unless score #GLOBAL elevator_unlocked matches 1 run scoreboard players set #world_eye unlock 1
scoreboard players set #GLOBAL elevator_unlocked 2
playsound block.note_block.pling master @a ~ ~ ~ 0.8 1.25
title @a actionbar {"text":"엘리베이터가 Lv. 2로 업그레이드되었습니다. 3층으로 이동할 수 있습니다.","color":"aqua",italic:false}
