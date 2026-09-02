# 전용 운석 멸망은 일반 랜덤 재난 목록을 통하지 않습니다.
execute if score #disaster_running run matches 1 run return 0
scoreboard players set #disaster_running run 1
execute if score #GLOBAL era_paused matches 1 run scoreboard players set #GLOBAL era_observed 1
scoreboard players set #GLOBAL era_paused 1
scoreboard objectives setdisplay sidebar

effect give @a blindness 7 1 true
effect give @a darkness 7 1 true
title @a times 20 60 20
title @a title {text:"운석 충돌",color:"dark_red",bold:true}
title @a subtitle {text:"하늘에서 떨어진 이질적인 천체가 문명을 파괴했습니다.",color:"gray"}
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1.0 0.5
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.6 0.7
tellraw @a [{text:"운석 충돌로 문명이 멸망했습니다.",color:"red",bold:true}]

# 일반 멸망과 같은 문명 수 집계만 공유하고, 원인 선택은 전용 경로에 고정합니다.
scoreboard players add #GLOBAL n_civil 1
advancement grant @a only 6_disaster/00_root
schedule function resource/color/event/meteor_finish 120t replace
