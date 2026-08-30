# 시간 보관소의 시공간 확장
# 정보 2조각을 소모해 숨겨진 시공간에서 시간을 가져온다.
execute unless score #GLOBAL current_dim matches 3 run title @s actionbar {text:"극야 차원의 보관소에서만 사용할 수 있습니다.",color:"red",italic:true}
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run title @s actionbar {text:"이번 문명의 정산이 이미 끝났습니다.",color:"red",italic:true}
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0
execute if score #spacetime_expansion_used var matches 1 run title @s actionbar {text:"이번 극야에서는 이미 시공간 확장을 사용했습니다.",color:"red",italic:true}
execute if score #spacetime_expansion_used var matches 1 run return 0

data remove storage data tmp.cost
data modify storage data tmp.cost set value [{type:"information",amount:2},{type:"no_obsidian",amount:1}]
execute store result score #spacetime_expansion_cost_check tmp run function resource/check_cost
execute unless score #spacetime_expansion_cost_check tmp matches 1 run title @s actionbar {text:"정보 2조각이 필요합니다.",color:"red",italic:true}
execute unless score #spacetime_expansion_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #spacetime_expansion_cost_check tmp matches 1 run return 0

function resource/cost/take
scoreboard players set #spacetime_expansion_used var 1

# 1%: 22 / 28%: 10 / 37%: 6 / 나머지 34%: 3
execute store result score #spacetime_expansion_roll tmp run random value 0..99
scoreboard players set #spacetime_expansion_reward tmp 3
execute if score #spacetime_expansion_roll tmp matches 0 run scoreboard players set #spacetime_expansion_reward tmp 22
execute if score #spacetime_expansion_roll tmp matches 1..28 run scoreboard players set #spacetime_expansion_reward tmp 10
execute if score #spacetime_expansion_roll tmp matches 29..65 run scoreboard players set #spacetime_expansion_reward tmp 6

scoreboard players operation #material_add_value tmp = #spacetime_expansion_reward tmp
function meta/time/give
advancement grant @s only 3_polarnight/02_expanded_spacetime expand_time
playsound block.respawn_anchor.charge weather @s ~ ~ ~ 0.8 1.4
function shop/third/storage_ui {id:"time",name:"시간",title:"보관소",color:"dark_aqua",unit:"조각",bank_max:500,trigger:1822,withdraw_trigger:1826}
return 1
