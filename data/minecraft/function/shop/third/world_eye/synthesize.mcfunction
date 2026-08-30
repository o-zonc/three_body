function shop/third/world_eye/prepare
data modify storage data tmp.cost set value [{type:"information",amount:3},{type:"time",amount:1},{type:"no_obsidian",amount:1}]
execute store result score #third_eye_cost_check tmp run function resource/check_cost
execute unless score #third_eye_cost_check tmp matches 1 run title @s actionbar {text:"정보 또는 시간이 부족합니다.",color:"red",italic:true}
execute unless score #third_eye_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #third_eye_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players operation #world_eye material += #third_eye_yield tmp
playsound block.end_portal_frame.fill weather @s ~ ~ ~ 0.8 1.2
title @s actionbar [{text:"",italic:false},{text:"세계의 눈 +",color:"dark_green"},{score:{name:"#third_eye_yield",objective:"tmp"},color:"white"}]
function shop/third/world_eye/ui
return 1
