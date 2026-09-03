# 공허의 구멍에서 흑요석 1개 수급
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless entity @a[tag=accelerator_experiment_running] unless score #GLOBAL reckoning_ready matches 1.. run title @s actionbar {text:"문명 정산이 끝나 공허의 구멍이 닫혔습니다.",color:"dark_gray",italic:true}
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0

execute unless score #hole_level upgrade matches 0.. run scoreboard players set #hole_level upgrade 0
execute unless score #hole_claims var matches 0.. run scoreboard players set #hole_claims var 0
scoreboard players operation #hole_max_claims tmp = #hole_level upgrade
scoreboard players add #hole_max_claims tmp 1
execute unless entity @a[tag=accelerator_experiment_running] unless score #hole_claims var < #hole_max_claims tmp run title @s actionbar {text:"이번 문명에서 가능한 수급을 모두 마쳤습니다.",color:"dark_gray",italic:true}
execute unless score #hole_claims var < #hole_max_claims tmp run return 0

# 수급 횟수에 따라 정보/시간 비용이 급격히 증가한다.
data remove storage data tmp.cost
execute if score #hole_claims var matches 0 run data modify storage data tmp.cost set value [{type:"information",amount:2},{type:"time",amount:1},{type:"no_obsidian",amount:1}]
execute if score #hole_claims var matches 1 run data modify storage data tmp.cost set value [{type:"information",amount:8},{type:"time",amount:2},{type:"no_obsidian",amount:1}]
execute if score #hole_claims var matches 2 run data modify storage data tmp.cost set value [{type:"information",amount:64},{type:"time",amount:4},{type:"no_obsidian",amount:1}]

execute store result score #hole_cost_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #hole_cost_check tmp matches 1 run title @s actionbar {text:"정보 또는 시간이 부족합니다.",color:"red",italic:true}
execute unless score #hole_cost_check tmp matches 1 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute unless score #hole_cost_check tmp matches 1 run return 0

function resource/cost/take
function meta/obsidian/give_item {amount:1}
scoreboard players add #hole_claims var 1
function meta/sync

execute at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.7 1.4
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.35 0.5 0.35 0.08 36 force @s
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar [{text:"",italic:false},{text:"흑요석 +1",color:"dark_gray",shadow_color:-8388480,bold:true},{text:"  ·  균열이 한층 불안정해졌습니다.",color:"dark_gray",bold:false}]
function shop/hole/interact
return 1
