execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2

function util/blank
tellraw @s ["",{text:"  [ 폭염 대책 물약 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  난세기의 실외 폭염을 견딜 수 있게 해줍니다.",color:"gray",bold:false}]

data modify storage data tmp.cost set value [{type:"cold",amount:1}]
function resource/convert_cost_to_text_named {id:"dried_cooling_potion",insertion:", "}
tellraw @s ["",{text:"\n\n  "},{text:"[ 냉각 물약 구매 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:["",{text:"§7마시면 현재 난세기 동안 실외 발화 효과를 무시합니다.\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dried_cooling_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2002"}}]
