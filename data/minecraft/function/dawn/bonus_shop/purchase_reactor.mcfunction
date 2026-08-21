execute unless score #GLOBAL current_dim matches 4 run return 0
execute unless score #GLOBAL dawn_bonus_shop matches 1.. run return 0
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0
data modify storage data tmp.cost set value [{type:"information",amount:32},{type:"time",amount:8}]
execute store result score #dawn_reactor_cost tmp run function resource/check_cost
execute unless score #dawn_reactor_cost tmp matches 1 run title @s actionbar {text:"정보 또는 시간이 부족합니다.",color:"red"}
execute unless score #dawn_reactor_cost tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #GLOBAL dawn_reactor_purchased 1
function item/give/reactor
playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
function dawn/bonus_shop/ui
return 1
