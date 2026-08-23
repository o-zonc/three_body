scoreboard players set * factory_enabled 0
scoreboard players set * factory_status 0
function factory/campfires
playsound block.iron_door.close weather @s ~ ~ ~ 0.8 0.8
title @s actionbar {text:"모든 공장의 가동을 중단했습니다.",color:"red"}
function factory/check
return 1
