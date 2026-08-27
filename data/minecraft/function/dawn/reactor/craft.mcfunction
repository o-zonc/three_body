# 여명 차원 리액터 제작
execute unless score #GLOBAL current_dim matches 4 run return 0
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run title @s actionbar {text:"이미 리액터를 제작했습니다.",color:"#F971BE",italic:true,bold:false}
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0

# 제작 직전 인벤토리에 실제로 소지한 정보/시간을 기록합니다.
# 둘 중 하나 또는 둘 다 0개여도 제작할 수 있으며, 해당 자원의 반응 결과만 0이 됩니다.
execute store result score #dawn_reactor_info_before tmp run clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}] 0
execute store result score #dawn_reactor_time_before tmp run clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}] 0

# 현재 소지량 전부를 제작 비용으로 설정합니다.
# 리액터 반응은 핵심 메커니즘이므로 흑요석으로 대체할 수 없습니다.
data modify storage data tmp.cost set value [{type:"information",amount:0},{type:"time",amount:0},{type:"no_obsidian",amount:1}]
execute store result storage data tmp.cost[{type:"information"}].amount int 1 run scoreboard players get #dawn_reactor_info_before tmp
execute store result storage data tmp.cost[{type:"time"}].amount int 1 run scoreboard players get #dawn_reactor_time_before tmp

execute store result score #dawn_reactor_cost_check tmp run function resource/check_cost
execute unless score #dawn_reactor_cost_check tmp matches 1 run title @s actionbar {text:"정보 또는 시간의 소지량이 변경되었습니다.",color:"red",italic:true}
execute unless score #dawn_reactor_cost_check tmp matches 1 run return 0

# 제작 직전 소지했던 정보와 시간을 전부 소비합니다. 0개인 자원은 아무것도 소비하지 않습니다.
function resource/cost/take
scoreboard players set #GLOBAL dawn_reactor_purchased 1

# 리액터 제작 완료 시 여명 중앙의 첫 번째 스테인드글라스를 분홍색으로 채색합니다.
execute in minecraft:dawn run setblock 0 64 0 minecraft:pink_stained_glass

# 시공간 반응: 소비한 정보/시간의 2배를 새로 만들어 냅니다.
scoreboard players operation #dawn_reactor_info_bonus tmp = #dawn_reactor_info_before tmp
scoreboard players operation #dawn_reactor_time_bonus tmp = #dawn_reactor_time_before tmp
scoreboard players set #dawn_reactor_double tmp 2
scoreboard players operation #dawn_reactor_info_bonus tmp *= #dawn_reactor_double tmp
scoreboard players operation #dawn_reactor_time_bonus tmp *= #dawn_reactor_double tmp

execute store result storage data tmp.dawn_reactor_info_bonus.amount int 1 run scoreboard players get #dawn_reactor_info_bonus tmp
execute store result storage data tmp.dawn_reactor_time_bonus.amount int 1 run scoreboard players get #dawn_reactor_time_bonus tmp
# /give의 수량 0은 호출하지 않고, UI에는 계산된 0을 그대로 표시합니다.
execute if score #dawn_reactor_info_bonus tmp matches 1.. run function meta/information/give_item with storage data tmp.dawn_reactor_info_bonus
execute if score #dawn_reactor_time_bonus tmp matches 1.. run function meta/time/give_item with storage data tmp.dawn_reactor_time_bonus

function meta/sync
function item/give/reactor
playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
function util/blank
tellraw @s ["",{text:"  [ 시공간 반응 ]",color:"#F971BE",bold:true},{text:"\n\n  리액터가 정보와 시간을 반응시켜 시공간의 균열을 만들어 냈습니다.",color:"gray"},{text:"\n  정보 +",color:"light_purple"},{score:{name:"#dawn_reactor_info_bonus",objective:"tmp"},color:"light_purple"},{text:" / 시간 +",color:"dark_aqua"},{score:{name:"#dawn_reactor_time_bonus",objective:"tmp"},color:"dark_aqua"},{text:"\n"}]
return 1
