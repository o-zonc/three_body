# 근대 시대부터 구매 가능: 엘리베이터 Lv. 1 (돌 1,200, 철 100)
execute unless entity @a[tag=accelerator_experiment_running] unless score #overworld civilization_age matches 7.. run title @s actionbar {"text":"근대 시대에 도달해야 엘리베이터를 해금할 수 있습니다.","color":"red",italic:true}
execute unless score #overworld civilization_age matches 7.. run return 0
execute unless entity @a[tag=accelerator_experiment_running] unless score #GLOBAL elevator_unlocked matches 0 run title @s actionbar {"text":"엘리베이터가 이미 해금되어 있습니다.","color":"red",italic:true}
execute unless score #GLOBAL elevator_unlocked matches 0 run return 0
data modify storage data tmp.cost set value [{type:"stone",amount:1200},{type:"iron",amount:100}]
execute store result score #elevator_purchase_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #elevator_purchase_check tmp matches 1 run title @s actionbar {"text":"재료가 부족합니다.","color":"red",italic:true}
execute unless score #elevator_purchase_check tmp matches 1 run return 0
function resource/cost/take
function elevator/unlock
function elevator/shop_interact
return 1
