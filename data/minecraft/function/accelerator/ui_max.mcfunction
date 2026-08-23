# 충돌 실험 비용 툴팁
data modify storage data tmp.cost set value [{type:"iron",amount:50000},{type:"lapis",amount:500},{type:"gold",amount:250},{type:"diamond",amount:50},{type:"time",amount:1}]
function resource/convert_cost_to_text_named {id:"accelerator_experiment",insertion:", "}

tellraw @s ["",{text:"  [ 입자가속기 ]",color:"aqua",bold:true},{text:"\n\n  • 레벨: 4 / 4",color:"green"},{text:"\n  • 정보 생산량: 8개 / 400틱",color:"light_purple"},{text:"\n  • 실험 쿨다운: ",color:"gray"},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"white"},{text:"틱",color:"gray"},{text:"\n\n  [ 충돌 실험 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.accelerator_experiment.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger accelerator_trigger set 2"}},{text:"\n  최대 단계에 도달했습니다.",color:"green"},{text:"\n"}]

data remove storage data tmp.cost
