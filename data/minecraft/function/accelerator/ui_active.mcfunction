scoreboard players set #accelerator_info_amount tmp 1
scoreboard players set #accelerator_interval tmp 1200
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_info_amount tmp 2
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #accelerator_interval tmp 900
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_info_amount tmp 4
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #accelerator_interval tmp 600

# 충돌 실험 비용 툴팁
# 철 50,000 / 청금석 500 / 금 250 / 다이아몬드 50 / 소지한 시간 1
data modify storage data tmp.cost set value [{type:"iron",amount:50000},{type:"lapis",amount:500},{type:"gold",amount:250},{type:"diamond",amount:50},{type:"time",amount:1}]
function resource/convert_cost_to_text_named {id:"accelerator_experiment",insertion:", "}

# 다음 단계 업그레이드 비용 툴팁
data remove storage data tmp.cost
execute if score #GLOBAL accelerator_level matches 1 run data modify storage data tmp.cost set value [{type:"iron",amount:300000},{type:"time",amount:2}]
execute if score #GLOBAL accelerator_level matches 2 run data modify storage data tmp.cost set value [{type:"iron",amount:800000},{type:"time",amount:4}]
execute if score #GLOBAL accelerator_level matches 3 run data modify storage data tmp.cost set value [{type:"iron",amount:2000000},{type:"time",amount:8}]
function resource/convert_cost_to_text_named {id:"accelerator_upgrade",insertion:", "}
execute if score #GLOBAL accelerator_level matches 1 run data modify storage data tmp.cost_text.accelerator_upgrade.cost append value {text:"깨진 양자 얽힘 파편 10개",color:"dark_gray"}
execute if score #GLOBAL accelerator_level matches 2 run data modify storage data tmp.cost_text.accelerator_upgrade.cost append value {text:"깨진 양자 얽힘 파편 40개",color:"dark_gray"}
execute if score #GLOBAL accelerator_level matches 3 run data modify storage data tmp.cost_text.accelerator_upgrade.cost append value {text:"깨진 양자 얽힘 파편 120개",color:"dark_gray"}

tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  • 레벨: ",color:"gray"},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white"},{text:" / 4",color:"gray"},{text:"\n  • 정보 생산량: ",color:"gray"},{score:{name:"#accelerator_info_amount",objective:"tmp"},color:"light_purple"},{text:"개",color:"gray"},{text:"\n  • 생산 주기: ",color:"gray"},{score:{name:"#accelerator_interval",objective:"tmp"},color:"white"},{text:"틱",color:"gray"},{text:"\n  • 실험 쿨다운: ",color:"gray"},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"white"},{text:"틱",color:"gray"},{text:"\n\n  [ 충돌 실험 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.accelerator_experiment.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 2"}},{text:"\n  [ 다음 단계 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.accelerator_upgrade.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 1"}},{text:"\n"}]

data remove storage data tmp.cost
