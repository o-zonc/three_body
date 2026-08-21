execute if score #GLOBAL accelerator_level matches 4.. run title @s actionbar {text:"입자가속기는 이미 최대 레벨입니다.",color:"red"}
execute if score #GLOBAL accelerator_level matches 4.. run return 0
data remove storage data tmp.cost
execute if score #GLOBAL accelerator_level matches 0 run data modify storage data tmp.cost set value [{type:"iron",amount:100000},{type:"time",amount:1}]
execute if score #GLOBAL accelerator_level matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:300000},{type:"time",amount:2}]
execute if score #GLOBAL accelerator_level matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:800000},{type:"time",amount:4}]
execute if score #GLOBAL accelerator_level matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:2000000},{type:"time",amount:8}]
execute store result score #accelerator_cost_ok tmp run function resource/check_cost
execute store result score #broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute if score #GLOBAL accelerator_level matches 1 unless score #broken_count tmp matches 10.. run scoreboard players set #accelerator_cost_ok tmp 0
execute if score #GLOBAL accelerator_level matches 2 unless score #broken_count tmp matches 40.. run scoreboard players set #accelerator_cost_ok tmp 0
execute if score #GLOBAL accelerator_level matches 3 unless score #broken_count tmp matches 120.. run scoreboard players set #accelerator_cost_ok tmp 0
execute unless score #accelerator_cost_ok tmp matches 1 run title @s actionbar {text:"업그레이드 재료가 부족합니다.",color:"red"}
execute unless score #accelerator_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #accelerator_cost_ok tmp matches 1 run return 0
function resource/cost/take
execute if score #GLOBAL accelerator_level matches 1 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 10
execute if score #GLOBAL accelerator_level matches 2 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 40
execute if score #GLOBAL accelerator_level matches 3 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 120
scoreboard players add #GLOBAL accelerator_level 1
scoreboard players set #GLOBAL accelerator_timer 1
playsound entity.player.levelup weather @s ~ ~ ~ 1 1.2
title @s actionbar [{text:"입자가속기 Lv.",color:"aqua"},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white"},{text:" 업그레이드 완료",color:"aqua"}]
function accelerator/ui
