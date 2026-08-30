# 현대 시대부터 구매 가능: 엘리베이터 Lv. 2 (열기 40, 냉기 30, 정보 5)
execute unless score #overworld civilization_age matches 8.. run title @s actionbar {"text":"현대 시대에 도달해야 3층을 해금할 수 있습니다.","color":"red",italic:true}
execute unless score #overworld civilization_age matches 8.. run return 0
execute unless score #GLOBAL elevator_unlocked matches 1 run title @s actionbar {"text":"엘리베이터 Lv. 1을 먼저 해금해야 합니다.","color":"red",italic:true}
execute unless score #GLOBAL elevator_unlocked matches 1 run return 0
data modify storage data tmp.cost set value [{type:"heat",amount:40},{type:"cold",amount:30},{type:"information",amount:5}]
execute store result score #elevator_purchase_check tmp run function resource/check_cost
execute unless score #elevator_purchase_check tmp matches 1 run title @s actionbar {"text":"재료가 부족합니다.","color":"red",italic:true}
execute unless score #elevator_purchase_check tmp matches 1 run return 0
function resource/cost/take
function elevator/upgrade
function elevator/shop_interact
return 1
