execute unless score #frozen_shop unlock matches 1.. run return 0
execute unless score #frozen_bridge unlock matches 1.. run title @s actionbar {text:"다리를 먼저 해금해야 합니다.",color:"red"}
execute unless score #frozen_bridge unlock matches 1.. run return 0
execute if score #frozen_maze unlock matches 1.. run return 0
data modify storage data tmp.cost set value [{type:"information",amount:150},{type:"time",amount:5}]
execute store result score #frozen_purchase_check tmp run function resource/check_cost
execute unless score #frozen_purchase_check tmp matches 1 run title @s actionbar {text:"정보 또는 시간이 부족합니다.",color:"red"}
execute unless score #frozen_purchase_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #frozen_maze unlock 1
execute in minecraft:frozen run function frozen/structure/maze/on
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function frozen/interaction/shop
return 1
