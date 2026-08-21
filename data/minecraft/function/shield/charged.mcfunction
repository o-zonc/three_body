execute if score #GLOBAL shield_charge matches 216001.. run scoreboard players set #GLOBAL shield_charge 216000
execute if score #GLOBAL shield_maintenance matches ..0 run scoreboard players set #GLOBAL shield_maintenance 6000
playsound block.beacon.power_select weather @s ~ ~ ~ 1 1.4
title @s actionbar {text:"양자 보호막이 충전되었습니다.",color:"white"}
function shield/ui
