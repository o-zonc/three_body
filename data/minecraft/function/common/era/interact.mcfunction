# 관측소 내부의 era 태그 interaction 전용 시간 제어 UI
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute if score #era unlock matches 1.. run function util/blank
execute if score #era unlock matches 1.. run tellraw @s ["",{text:"  [ 시간 흐름 제어 ]",color:"dark_aqua",bold:true},{text:"\n\n  시간의 흐름을 원하는 때에 멈추거나 재개할 수 있습니다.",color:"gray"},{text:"\n\n  "},{text:"[ 흐름 정지 ]",color:"red",bold:true,hover_event:{action:"show_text",value:{text:"난세기 타이머와 관련 진행을 멈춥니다."}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1702"}},{text:"  "},{text:"[ 흐름 재개 ]",color:"green",bold:true,hover_event:{action:"show_text",value:{text:"멈춘 시간의 흐름을 다시 시작합니다."}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1703"}},{text:"\n"}]
execute if score #era unlock matches 1.. run return 0

data modify storage data tmp.cost set value [{type:"time",amount:2}]
function resource/convert_cost_to_text_named {id:"era_control",insertion:", "}
function util/blank
tellraw @s ["",{text:"  [ 시간 흐름 제어 ]",color:"dark_aqua",bold:true},{text:"\n\n  관측소의 시간 제어 장치를 해금합니다."},{text:"\n  해금 후에는 시간의 흐름을 자유롭게 멈추고 재개할 수 있습니다.",color:"gray"},{text:"\n\n  "},{text:"[ 해금 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.era_control.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1701"}},{text:"\n"}]
