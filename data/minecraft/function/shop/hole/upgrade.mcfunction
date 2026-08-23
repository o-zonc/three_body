# 공허의 구멍 균열 확장
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run title @s actionbar {text:"문명 정산이 끝나 공허의 구멍이 닫혔습니다.",color:"dark_gray",italic:true}
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0

execute unless score #hole_level upgrade matches 0.. run scoreboard players set #hole_level upgrade 0
execute if score #hole_level upgrade matches 2.. run title @s actionbar {text:"균열은 이미 최대 단계까지 확장되었습니다.",color:"dark_green",italic:true}
execute if score #hole_level upgrade matches 2.. run return 0

scoreboard players set #hole_upgrade_cost tmp 16
execute if score #hole_level upgrade matches 1 run scoreboard players set #hole_upgrade_cost tmp 256
execute unless score #world_eye material >= #hole_upgrade_cost tmp run title @s actionbar [{text:"세계의 눈 ",color:"dark_green"},{score:{name:"#hole_upgrade_cost",objective:"tmp"},color:"white"},{text:"개가 필요합니다.",color:"red"}]
execute unless score #world_eye material >= #hole_upgrade_cost tmp at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute unless score #world_eye material >= #hole_upgrade_cost tmp run return 0

scoreboard players operation #world_eye material -= #hole_upgrade_cost tmp
scoreboard players add #hole_level upgrade 1
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 0.9 0.75
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.6 0.5 0.12 48 force @s
title @s actionbar [{text:"공허의 균열이 확장되었습니다.  ",color:"dark_purple"},{text:"수급 가능 횟수 +1",color:"green"}]
function shop/hole/interact
return 1
