function util/blank

scoreboard players set #accelerator_ui_production tmp 8
scoreboard players set #accelerator_ui_interval_seconds tmp 20
scoreboard players operation #accelerator_ui_remaining_seconds tmp = #GLOBAL accelerator_timer
scoreboard players set #accelerator_ui_ticks_per_second tmp 20
scoreboard players operation #accelerator_ui_remaining_seconds tmp /= #accelerator_ui_ticks_per_second tmp

data modify storage data tmp.meta_production_pause_ui set value {text:"",bold:false}
execute if score #GLOBAL era_paused matches 1 run data modify storage data tmp.meta_production_pause_ui set value {text:" (시간 정지로 생산 중단)",color:"red",bold:false}
tellraw @s [{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  최대 출력으로 가동 중입니다.",color:"gray",bold:false},{text:"\n  • 현재 레벨: 4 / 4",color:"white",bold:false},{text:"\n  • 정보 생산: ",color:"gray",bold:false},{score:{name:"#accelerator_ui_production",objective:"tmp"},color:"light_purple",bold:false},{text:"개 / ",color:"gray",bold:false},{score:{name:"#accelerator_ui_interval_seconds",objective:"tmp"},color:"white",bold:false},{text:"초",color:"gray",bold:false},{storage:"data",nbt:"tmp.meta_production_pause_ui",interpret:true},{text:"\n  • 다음 생산까지: ",color:"gray",bold:false},{score:{name:"#accelerator_ui_remaining_seconds",objective:"tmp"},color:"white",bold:false},{text:"초",color:"gray",bold:false},{text:"\n\n  ",bold:false},{text:"충돌 실험은 실패할 수 있으며, 실험이 끝난 뒤에는 장치를 안정화하기 위한 재정비 시간이 필요합니다. 재정비 중에는 새로운 실험을 시작할 수 없습니다.",color:"dark_gray",italic:true,bold:false}]
execute if score #GLOBAL experiment_cooldown matches 1.. run tellraw @s [{text:"\n  • 실험 재정비까지: ",color:"gray",bold:false},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"yellow",bold:false},{text:"틱",color:"gray",bold:false}]

# 실험 버튼은 정확히 세 줄 연속으로 표시한다.
function accelerator/prepare_experiment_cost {type:"quantum",id:"accelerator_quantum"}
tellraw @s [{text:"\n  [ 양자 충돌 실험 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:[{text:"기본적인 양자 충돌을 관측합니다. 최대 레벨에서는 고급 파편 발견 확률이 가장 높습니다.",color:"gray",bold:false},{text:"\n실패 확률: 10%",color:"dark_gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_quantum.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 10"}}]
function accelerator/prepare_experiment_cost {type:"heavy",id:"accelerator_heavy"}
tellraw @s [{text:"  [ 중입자 충돌 실험 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"세 등급의 양자 얽힘 파편을 각각 독립적으로 추출합니다.",color:"gray",bold:false},{text:"\n실패 확률: 16%",color:"dark_gray",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_heavy.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 11"}}]
function accelerator/prepare_experiment_cost {type:"spacetime",id:"accelerator_spacetime"}
tellraw @s [{text:"  [ 시공간 붕괴 실험 ]",color:"#F971BE",bold:true,hover_event:{action:"show_text",value:[{text:"극한의 충돌로 국소적인 시공간 붕괴를 유도합니다. 대량의 파편과 흑요석을 획득합니다.",color:"gray",bold:false},{text:"\n미래 시대 진입 조건을 충족합니다.",color:"dark_gray",bold:false},{text:"\n실패 확률: 25%",color:"dark_gray",bold:false},{text:"\n실패 시 정보 16 / 시간 1 손실",color:"dark_red",bold:false},{text:"\n\n§6[§7 필요한 재료 §6]\n",bold:false},{storage:"data",nbt:"tmp.cost_text.accelerator_spacetime.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 12"}},{text:"\n"}]
