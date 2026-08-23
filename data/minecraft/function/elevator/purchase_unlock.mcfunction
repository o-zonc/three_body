# 근대 시대부터 구매 가능: 엘리베이터 Lv. 1 (금 100, 다이아몬드 50)
execute unless score #overworld civilization_age matches 7.. run title @s actionbar {"text":"근대 시대에 도달해야 엘리베이터를 해금할 수 있습니다.","color":"red"}
execute unless score #overworld civilization_age matches 7.. run return 0
execute unless score #GLOBAL elevator_unlocked matches 0 run title @s actionbar {"text":"엘리베이터가 이미 해금되어 있습니다.","color":"red"}
execute unless score #GLOBAL elevator_unlocked matches 0 run return 0
data modify storage data tmp.cost set value [{type:"gold",amount:100},{type:"diamond",amount:50}]
execute store result score #elevator_purchase_check tmp run function resource/check_cost
execute unless score #elevator_purchase_check tmp matches 1 run title @s actionbar {"text":"재료가 부족합니다. 금 100개와 다이아몬드 50개가 필요합니다.","color":"red"}
execute unless score #elevator_purchase_check tmp matches 1 run return 0
function resource/cost/take
function elevator/unlock
function elevator/shop_interact
return 1
