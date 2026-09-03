execute unless score #frozen_shop unlock matches 1.. run return 0
execute if score #frozen_bridge unlock matches 1.. run return 0
# 기본 20초 생산 주기와 짧은 초기 항성기/난세기를 고려한 초중반 비용이다.
data modify storage data tmp.cost set value [{type:"diamond",amount:2},{type:"cold",amount:1}]
execute store result score #frozen_purchase_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #frozen_purchase_check tmp matches 1 run title @s actionbar {text:"다이아몬드 또는 냉기가 부족합니다.",color:"red",italic:true}
execute unless score #frozen_purchase_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #frozen_bridge unlock 1
execute in minecraft:frozen run function frozen/structure/bridge/on
execute unless entity @s[advancements={1_frozen/11_bridge=true}] run advancement grant @s only 1_frozen/11_bridge
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function frozen/interaction/shop
return 1
