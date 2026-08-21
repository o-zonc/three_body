execute if score #frozen_shop unlock matches 1.. run return 0
data modify storage data tmp.cost set value [{type:"diamond",amount:25}]
execute store result score #frozen_purchase_check tmp run function resource/check_cost
execute unless score #frozen_purchase_check tmp matches 1 run title @s actionbar {text:"다이아몬드가 부족합니다.",color:"red"}
execute unless score #frozen_purchase_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #frozen_shop unlock 1
execute in minecraft:frozen run function frozen/structure/shop/on
advancement grant @s only 1_frozen/10_shop
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function frozen/interaction/info
return 1
