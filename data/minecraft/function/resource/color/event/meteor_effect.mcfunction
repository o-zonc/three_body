title @a title {text:"운석 충돌",color:"dark_red",bold:true}
title @a subtitle {text:"하늘에서 떨어진 이질적인 천체가 문명을 파괴했습니다.",color:"gray"}
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1.0 0.5
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.6 0.7
tellraw @a [{text:"운석 충돌로 문명이 멸망했습니다.",color:"red",bold:true}]
