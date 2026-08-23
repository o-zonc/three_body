# 여명 차원 자원 증폭기 UI
# Macro args: id, name, color, trigger

$function dawn/amplifier/cost/$(id)
function resource/convert_cost_to_text_named {id:"dawn_amp",insertion:", "}
function util/blank

$execute if score #dawn_$(id)_amp meta matches 0 run tellraw @s ["",{text:"  [ $(name) 자원 증폭기 ]",color:"$(color)",bold:true},{text:"\n\n  시공간 공명을 이용해 $(name)의 자원 수급량을 증폭합니다.",color:"gray"},{text:"\n  현재: §8미해금"},{text:"\n  해금 효과: §a수급량 +20%"},{text:"\n\n  "},{text:"[ 해금 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:[{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dawn_amp.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}},{text:"\n"}]
$execute if score #dawn_$(id)_amp meta matches 0 run return 0

$execute if score #dawn_$(id)_amp meta matches 1 run tellraw @s ["",{text:"  [ $(name) 자원 증폭기 ]",color:"$(color)",bold:true},{text:"\n\n  현재: §fLv.0"},{text:"\n  수급량 증가: §a+20%"},{text:"\n  다음 단계: §a+50%"},{text:"\n\n  "},{text:"[ 강화 ]",color:"green",bold:true,hover_event:{action:"show_text",value:[{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dawn_amp.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}},{text:"\n"}]
$execute if score #dawn_$(id)_amp meta matches 1 run return 0

$execute if score #dawn_$(id)_amp meta matches 2 run tellraw @s ["",{text:"  [ $(name) 자원 증폭기 ]",color:"$(color)",bold:true},{text:"\n\n  현재: §fLv.1"},{text:"\n  수급량 증가: §a+50%"},{text:"\n  다음 단계: §a자원 성격에 따라 +100~150%"},{text:"\n\n  "},{text:"[ 최종 강화 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dawn_amp.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}},{text:"\n"}]
$execute if score #dawn_$(id)_amp meta matches 2 run return 0

$execute if score #dawn_$(id)_amp meta matches 3.. run tellraw @s ["",{text:"  [ $(name) 자원 증폭기 ]",color:"$(color)",bold:true},{text:"\n\n  현재: §6Lv.2 §7(최대)"},{text:"\n  수급량 증가: §a자원 성격에 따라 +100~150%"},{text:"\n"}]
