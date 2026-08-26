execute unless score #frozen_shop unlock matches 1.. run return 0
execute unless score #frozen_bridge unlock matches 1.. run title @s actionbar {text:"다리를 먼저 해금해야 합니다.",color:"red"}
execute unless score #frozen_bridge unlock matches 1.. run return 0
execute if score #frozen_maze unlock matches 1.. run return 0
# 공통 자원 수급과 극한 자원 수급이 모두 2레벨일 때 각각 약 10회 수급분입니다.
data modify storage data tmp.cost set value [{type:"diamond",amount:50},{type:"cold",amount:50}]
execute store result score #frozen_purchase_check tmp run function resource/check_cost
execute unless score #frozen_purchase_check tmp matches 1 run title @s actionbar {text:"다이아몬드 또는 냉기가 부족합니다.",color:"red"}
execute unless score #frozen_purchase_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #frozen_maze unlock 1
execute in minecraft:frozen run function frozen/structure/maze/on
advancement grant @s only 1_frozen/12_maze
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function frozen/interaction/shop
return 1
