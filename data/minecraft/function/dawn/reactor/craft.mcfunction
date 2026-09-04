# 여명 차원 리액터 제작
execute unless score #GLOBAL current_dim matches 4 run return 0
execute unless entity @a[tag=accelerator_experiment_running] if score #GLOBAL dawn_reactor_purchased matches 1.. run title @s actionbar {text:"이미 리액터를 제작했습니다.",color:"#F971BE",bold:false,italic:true}
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0

# 제작 직전 인벤토리에 실제로 소지한 정보/시간을 기록한다.
# 둘 중 하나 또는 둘 다 0개여도 제작할 수 있으며, 해당 자원의 반응 결과만 0이 된다.
execute store result score #dawn_reactor_info_before tmp run clear @s minecraft:amethyst_shard[minecraft:custom_data~{three_body:{meta:"information"}}] 0
execute store result score #dawn_reactor_time_before tmp run clear @s minecraft:echo_shard[minecraft:custom_data~{three_body:{meta:"time"}}] 0

# 현재 소지량 전부를 제작 비용으로 설정한다.
# 리액터 반응은 핵심 메커니즘이므로 흑요석으로 대체할 수 없다.
data modify storage data tmp.cost set value [{type:"information",amount:0},{type:"time",amount:0},{type:"no_obsidian",amount:1}]
execute store result storage data tmp.cost[{type:"information"}].amount int 1 run scoreboard players get #dawn_reactor_info_before tmp
execute store result storage data tmp.cost[{type:"time"}].amount int 1 run scoreboard players get #dawn_reactor_time_before tmp

execute store result score #dawn_reactor_cost_check tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #dawn_reactor_cost_check tmp matches 1 run title @s actionbar {text:"정보 또는 시간의 소지량이 변경되었습니다.",color:"red",italic:true}
execute unless score #dawn_reactor_cost_check tmp matches 1 run return 0

# 제작 직전 소지했던 정보와 시간을 전부 소비한다. 0개인 자원은 아무것도 소비하지 않는다.
function resource/cost/take
scoreboard players set #GLOBAL dawn_reactor_purchased 1

# 리액터 제작 완료 시 여명 중앙의 첫 번째 스테인드글라스를 분홍색으로 채색한다.
execute in minecraft:dawn run setblock 0 64 0 minecraft:pink_stained_glass

# 시공간 반응: 소비한 정보/시간의 2배를 새로 만들어 낸다.
# 세 증폭기 발전과제와 흑요석 저장고는 각각 리액터 산출량을 25%씩 증가시킨다.
scoreboard players operation #dawn_reactor_info_bonus tmp = #dawn_reactor_info_before tmp
scoreboard players operation #dawn_reactor_time_bonus tmp = #dawn_reactor_time_before tmp
scoreboard players set #dawn_reactor_double tmp 2
scoreboard players operation #dawn_reactor_info_bonus tmp *= #dawn_reactor_double tmp
scoreboard players operation #dawn_reactor_time_bonus tmp *= #dawn_reactor_double tmp

scoreboard players set #dawn_reactor_reward_count tmp 0
execute if entity @s[advancements={4_dawn/01_overworld_amplifier=true}] run scoreboard players add #dawn_reactor_reward_count tmp 1
execute if entity @s[advancements={4_dawn/02_dried_amplifier=true}] run scoreboard players add #dawn_reactor_reward_count tmp 1
execute if entity @s[advancements={4_dawn/03_frozen_amplifier=true}] run scoreboard players add #dawn_reactor_reward_count tmp 1
execute if entity @s[advancements={3_polarnight/94_obsidian_vault=true}] run scoreboard players add #dawn_reactor_reward_count tmp 1
scoreboard players set #dawn_reactor_green_reward tmp 0
execute if entity @s[advancements={0_overworld/25_green_time_machine=true}] run scoreboard players set #dawn_reactor_green_reward tmp 1

# 다른 자원 UI와 같은 ★ hover에 시공간 반응 수급량 증가 효과를 표시한다.
scoreboard players operation #dawn_reactor_reward_percent tmp = #dawn_reactor_reward_count tmp
scoreboard players set #dawn_reactor_reward_percent_unit tmp 25
scoreboard players operation #dawn_reactor_reward_percent tmp *= #dawn_reactor_reward_percent_unit tmp
data modify storage data tmp.dawn_reactor_gain_star set value {text:""}
data modify storage data tmp.dawn_reactor_gain_hover set value [{text:"시공간 반응 수급량 증가 효과",color:"gold"}]
execute if entity @s[advancements={4_dawn/01_overworld_amplifier=true}] run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n오버월드 자원 증폭기: +25%",color:"gray"}
execute if entity @s[advancements={4_dawn/02_dried_amplifier=true}] run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n메마른 세계 자원 증폭기: +25%",color:"gray"}
execute if entity @s[advancements={4_dawn/03_frozen_amplifier=true}] run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n얼어붙은 세계 자원 증폭기: +25%",color:"gray"}
execute if entity @s[advancements={3_polarnight/94_obsidian_vault=true}] run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n흑요석 저장고: +25%",color:"gray"}
execute if score #dawn_reactor_green_reward tmp matches 1 run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n초록 발전과제 보상: ×2",color:"green"}
execute if score #dawn_reactor_reward_count tmp matches 1.. run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"\n총 메타 자원 수급량: +",color:"green"}
execute if score #dawn_reactor_reward_count tmp matches 1.. run data modify storage data tmp.dawn_reactor_gain_hover append value {score:{name:"#dawn_reactor_reward_percent",objective:"tmp"},color:"green"}
execute if score #dawn_reactor_reward_count tmp matches 1.. run data modify storage data tmp.dawn_reactor_gain_hover append value {text:"%",color:"green"}
execute if score #dawn_reactor_reward_count tmp matches 1.. run data modify storage data tmp.dawn_reactor_gain_star set value {text:" ★",color:"gold",hover_event:{action:"show_text",value:[]}}
execute if score #dawn_reactor_green_reward tmp matches 1 run data modify storage data tmp.dawn_reactor_gain_star set value {text:" ★",color:"gold",hover_event:{action:"show_text",value:[]}}
execute if score #dawn_reactor_reward_count tmp matches 1.. run data modify storage data tmp.dawn_reactor_gain_star.hover_event.value set from storage data tmp.dawn_reactor_gain_hover
execute if score #dawn_reactor_green_reward tmp matches 1 run data modify storage data tmp.dawn_reactor_gain_star.hover_event.value set from storage data tmp.dawn_reactor_gain_hover

# 기본 산출량에 (100 + 발전과제 보상 25 * 달성 수)%를 적용한다.
scoreboard players set #dawn_reactor_reward_multiplier tmp 4
scoreboard players operation #dawn_reactor_reward_multiplier tmp += #dawn_reactor_reward_count tmp
scoreboard players operation #dawn_reactor_info_bonus tmp *= #dawn_reactor_reward_multiplier tmp
scoreboard players operation #dawn_reactor_time_bonus tmp *= #dawn_reactor_reward_multiplier tmp
scoreboard players set #dawn_reactor_reward_divisor tmp 4
scoreboard players operation #dawn_reactor_info_bonus tmp /= #dawn_reactor_reward_divisor tmp
scoreboard players operation #dawn_reactor_time_bonus tmp /= #dawn_reactor_reward_divisor tmp

# 공용 메타 자원 지급 흐름을 사용해 휴대 한도 초과분을 보관소에 바로 예치한다.
# 각 지급 결과는 다음 자원 지급 때 덮이기 전에 리액터 표시용 점수에 보존한다.
scoreboard players set #dawn_reactor_info_to_wallet tmp 0
scoreboard players set #dawn_reactor_info_to_bank tmp 0
scoreboard players set #dawn_reactor_time_to_wallet tmp 0
scoreboard players set #dawn_reactor_time_to_bank tmp 0
scoreboard players operation #material_add_value tmp = #dawn_reactor_info_bonus tmp
execute if score #dawn_reactor_info_bonus tmp matches 1.. run function meta/information/give
execute if score #dawn_reactor_info_bonus tmp matches 1.. run scoreboard players operation #dawn_reactor_info_to_wallet tmp = #meta_to_wallet tmp
execute if score #dawn_reactor_info_bonus tmp matches 1.. run scoreboard players operation #dawn_reactor_info_to_bank tmp = #meta_bank_added tmp
scoreboard players operation #material_add_value tmp = #dawn_reactor_time_bonus tmp
execute if score #dawn_reactor_time_bonus tmp matches 1.. run function meta/time/give
execute if score #dawn_reactor_time_bonus tmp matches 1.. run scoreboard players operation #dawn_reactor_time_to_wallet tmp = #meta_to_wallet tmp
execute if score #dawn_reactor_time_bonus tmp matches 1.. run scoreboard players operation #dawn_reactor_time_to_bank tmp = #meta_bank_added tmp

# 초록 발전과제의 2배 효과와 보관소 상한을 반영한 실제 획득량을 결과 UI에 표시한다.
scoreboard players operation #dawn_reactor_info_bonus tmp = #dawn_reactor_info_to_wallet tmp
scoreboard players operation #dawn_reactor_info_bonus tmp += #dawn_reactor_info_to_bank tmp
scoreboard players operation #dawn_reactor_time_bonus tmp = #dawn_reactor_time_to_wallet tmp
scoreboard players operation #dawn_reactor_time_bonus tmp += #dawn_reactor_time_to_bank tmp

# 정산 당시 기록한 시설·발전 단계는 최종 보관량이 확정된 이 시점에 복원한다.
execute if score #GLOBAL reckoning_pending matches 1.. run function reckoning/finalize
function item/give/reactor
# 문명 정산과 같은 형식으로 리액터의 정보·시간 획득량을 표시한다.
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar [{"text":"정보 +","color":"light_purple"},{"score":{"name":"#dawn_reactor_info_bonus","objective":"tmp"},"color":"light_purple"},{"storage":"data","nbt":"tmp.dawn_reactor_gain_star","interpret":true},{"text":" (소지 +","color":"dark_gray"},{"score":{"name":"#dawn_reactor_info_to_wallet","objective":"tmp"},"color":"light_purple"},{"text":" / 보관 +","color":"dark_gray"},{"score":{"name":"#dawn_reactor_info_to_bank","objective":"tmp"},"color":"light_purple"},{"text":") | ","color":"dark_gray"},{"text":"시간 +","color":"dark_aqua"},{"score":{"name":"#dawn_reactor_time_bonus","objective":"tmp"},"color":"dark_aqua"},{"storage":"data","nbt":"tmp.dawn_reactor_gain_star","interpret":true},{"text":" (소지 +","color":"dark_gray"},{"score":{"name":"#dawn_reactor_time_to_wallet","objective":"tmp"},"color":"dark_aqua"},{"text":" / 보관 +","color":"dark_gray"},{"score":{"name":"#dawn_reactor_time_to_bank","objective":"tmp"},"color":"dark_aqua"},{"text":")","color":"dark_gray"}]
playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
function util/blank
tellraw @s ["",{text:"  [ 시공간 반응 ]",color:"#F971BE",bold:true},{text:"\n\n  리액터가 정보와 시간을 반응시켜 시공간의 균열을 만들어 냈습니다.",color:"gray"},{text:"\n  정보 +",color:"light_purple"},{score:{name:"#dawn_reactor_info_bonus",objective:"tmp"},color:"light_purple"},{storage:"data",nbt:"tmp.dawn_reactor_gain_star",interpret:true},{text:" (소지 +",color:"dark_gray"},{score:{name:"#dawn_reactor_info_to_wallet",objective:"tmp"},color:"light_purple"},{text:" / 보관 +",color:"dark_gray"},{score:{name:"#dawn_reactor_info_to_bank",objective:"tmp"},color:"light_purple"},{text:")",color:"dark_gray"},{text:"\n  시간 +",color:"dark_aqua"},{score:{name:"#dawn_reactor_time_bonus",objective:"tmp"},color:"dark_aqua"},{storage:"data",nbt:"tmp.dawn_reactor_gain_star",interpret:true},{text:" (소지 +",color:"dark_gray"},{score:{name:"#dawn_reactor_time_to_wallet",objective:"tmp"},color:"dark_aqua"},{text:" / 보관 +",color:"dark_gray"},{score:{name:"#dawn_reactor_time_to_bank",objective:"tmp"},color:"dark_aqua"},{text:")",color:"dark_gray"},{text:"\n"}]
return 1
