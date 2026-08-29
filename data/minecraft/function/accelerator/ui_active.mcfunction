function util/blank

# 현재 레벨의 정보 생산량/주기를 UI용 임시 값으로 계산합니다.
scoreboard players set #accelerator_ui_production tmp 0
scoreboard players set #accelerator_ui_interval tmp 0
execute if score #GLOBAL accelerator_level matches 1 store result score #accelerator_ui_production tmp run data get storage data const.accelerator.level."1".production
execute if score #GLOBAL accelerator_level matches 2 store result score #accelerator_ui_production tmp run data get storage data const.accelerator.level."2".production
execute if score #GLOBAL accelerator_level matches 3 store result score #accelerator_ui_production tmp run data get storage data const.accelerator.level."3".production
execute if score #GLOBAL accelerator_level matches 1 store result score #accelerator_ui_interval tmp run data get storage data const.accelerator.level."1".production_interval
execute if score #GLOBAL accelerator_level matches 2 store result score #accelerator_ui_interval tmp run data get storage data const.accelerator.level."2".production_interval
execute if score #GLOBAL accelerator_level matches 3 store result score #accelerator_ui_interval tmp run data get storage data const.accelerator.level."3".production_interval
scoreboard players operation #accelerator_ui_interval_seconds tmp = #accelerator_ui_interval tmp
scoreboard players operation #accelerator_ui_remaining_seconds tmp = #GLOBAL accelerator_timer
scoreboard players set #accelerator_ui_ticks_per_second tmp 20
scoreboard players operation #accelerator_ui_interval_seconds tmp /= #accelerator_ui_ticks_per_second tmp
scoreboard players operation #accelerator_ui_remaining_seconds tmp /= #accelerator_ui_ticks_per_second tmp

data modify storage data tmp.meta_production_pause_ui set value {text:"",bold:false}
execute if score #GLOBAL era_paused matches 1 run data modify storage data tmp.meta_production_pause_ui set value {text:" (시간 정지로 생산 중단)",color:"red",bold:false}
tellraw @s [{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  양자 규모의 충돌 실험으로 정보와 양자 얽힘 파편을 생성합니다.",color:"gray",bold:false},{text:"\n  • 현재 레벨: ",color:"gray",bold:false},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white",bold:false},{text:" / 4",color:"gray",bold:false},{text:"\n  • 정보 생산: ",color:"gray",bold:false},{score:{name:"#accelerator_ui_production",objective:"tmp"},color:"light_purple",bold:false},{text:"개 / ",color:"gray",bold:false},{score:{name:"#accelerator_ui_interval_seconds",objective:"tmp"},color:"white",bold:false},{text:"초",color:"gray",bold:false},{storage:"data",nbt:"tmp.meta_production_pause_ui",interpret:true},{text:"\n  • 다음 생산까지: ",color:"gray",bold:false},{score:{name:"#accelerator_ui_remaining_seconds",objective:"tmp"},color:"white",bold:false},{text:"초",color:"gray",bold:false},{text:"\n\n  ",bold:false},{text:"충돌 실험은 실패할 수 있으며, 실험이 끝난 뒤에는 장치를 안정화하기 위한 재정비 시간이 필요합니다. 재정비 중에는 새로운 실험을 시작할 수 없습니다.",color:"dark_gray",italic:true,bold:false}]
execute if score #GLOBAL experiment_cooldown matches 1.. run tellraw @s [{text:"\n  • 실험 재정비까지: ",color:"gray",bold:false},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"yellow",bold:false},{text:"틱",color:"gray",bold:false}]

# 실험 버튼은 정확히 세 줄 연속으로 표시합니다.
function accelerator/prepare_experiment_cost {type:"quantum",id:"accelerator_quantum"}
tellraw @s [{text:"\n  [ 양자 충돌 실험 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:[{text:"기본적인 양자 충돌을 관측합니다.",color:"gray",bold:false},{text:"\n실패 확률: 10%",color:"dark_gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_quantum.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 10"}}]
function accelerator/prepare_experiment_cost {type:"heavy",id:"accelerator_heavy"}
execute if score #GLOBAL accelerator_level matches 2.. run tellraw @s [{text:"  [ 중입자 충돌 실험 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"더 높은 에너지로 중입자를 충돌시켜 세 등급의 양자 얽힘 파편을 동시에 탐색합니다.",color:"gray",bold:false},{text:"\n노랑·파랑 자원을 해금합니다.",color:"dark_gray",bold:false},{text:"\n실패 확률: 16%",color:"dark_gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_heavy.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 11"}}]
execute unless score #GLOBAL accelerator_level matches 2.. run tellraw @s [{text:"  [ 중입자 충돌 실험 ]",color:"dark_gray",bold:true,hover_event:{action:"show_text",value:{text:"입자가속기 Lv.2에서 해금됩니다.",color:"dark_gray",bold:false}}}]
function accelerator/prepare_experiment_cost {type:"spacetime",id:"accelerator_spacetime"}
execute if score #GLOBAL accelerator_level matches 4 run tellraw @s [{text:"  [ 시공간 붕괴 실험 ]",color:"#F971BE",bold:true,hover_event:{action:"show_text",value:[{text:"극한의 충돌로 국소적인 시공간 붕괴를 유도합니다. 대량의 파편과 흑요석을 획득합니다.",color:"gray",bold:false},{text:"\n미래 시대 진입 조건을 충족합니다.",color:"dark_gray",bold:false},{text:"\n실패 확률: 25%",color:"dark_gray",bold:false},{text:"\n실패 시 정보 16 / 시간 1 손실",color:"dark_red",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_spacetime.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 12"}}]
execute unless score #GLOBAL accelerator_level matches 4 run tellraw @s [{text:"  [ 시공간 붕괴 실험 ]",color:"dark_gray",bold:true,hover_event:{action:"show_text",value:{text:"입자가속기 Lv.4에서 해금됩니다.",color:"dark_gray",bold:false}}}]

function accelerator/prepare_upgrade_cost
execute if score #GLOBAL accelerator_level matches 1 run tellraw @s [{text:"\n  [ 다음 단계 업그레이드 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"입자가속기를 Lv.2로 업그레이드합니다.",color:"gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_upgrade.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 2 run tellraw @s [{text:"\n  [ 다음 단계 업그레이드 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"입자가속기를 Lv.3으로 업그레이드합니다.",color:"gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_upgrade.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
execute if score #GLOBAL accelerator_level matches 3 run tellraw @s [{text:"\n  [ 다음 단계 업그레이드 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"입자가속기를 Lv.4로 업그레이드합니다.",color:"gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_upgrade.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]
